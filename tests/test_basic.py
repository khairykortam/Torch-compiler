import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


class TorchSmokeTests(unittest.TestCase):
    def test_simple_add_simulates_and_compiles(self):
        program = ROOT / 'test.torch'
        sim = subprocess.run([sys.executable, 'torch.py', 'sim', str(program)], cwd=ROOT, capture_output=True, text=True)
        self.assertEqual(sim.returncode, 0, sim.stderr or sim.stdout)
        self.assertIn('30', sim.stdout)

        com = subprocess.run([sys.executable, 'torch.py', 'com', str(program)], cwd=ROOT, capture_output=True, text=True)
        self.assertEqual(com.returncode, 0, com.stderr or com.stdout)
        self.assertTrue((ROOT / 'output.asm').exists())

        subprocess.run(['nasm', '-felf64', 'output.asm'], cwd=ROOT, check=True)
        subprocess.run(['ld', '-o', 'output', 'output.o'], cwd=ROOT, check=True)
        run_bin = subprocess.run([str(ROOT / 'output')], cwd=ROOT, capture_output=True, text=True)
        self.assertEqual(run_bin.returncode, 0, run_bin.stderr or run_bin.stdout)
        self.assertIn('30', run_bin.stdout)

    def test_stack_and_control_ops(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            tmp = Path(tmpdir) / 'ops.torch'
            tmp.write_text('1 2 + 3 = dump\n1 2 < dump\n1 2 > dump\n1 dup + dump\n2 3 swap + dump\n5 1 over + dump\n5 drop dump\n')
            sim = subprocess.run([sys.executable, 'torch.py', 'sim', str(tmp)], cwd=ROOT, capture_output=True, text=True)
            self.assertEqual(sim.returncode, 0, sim.stderr or sim.stdout)
            self.assertIn('1\n1\n0\n2\n5\n6\n5\n', sim.stdout)

    def test_include_expands(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            tmpdir = Path(tmpdir)
            (tmpdir / 'helper.torch').write_text('5 dump\n')
            (tmpdir / 'main.torch').write_text('include "helper.torch"\n1 2 + dump\n')
            sim = subprocess.run([sys.executable, 'torch.py', 'sim', str(tmpdir / 'main.torch')], cwd=ROOT, capture_output=True, text=True)
            self.assertEqual(sim.returncode, 0, sim.stderr or sim.stdout)
            self.assertIn('3\n5\n', sim.stdout)


if __name__ == '__main__':
    unittest.main()
