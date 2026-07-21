import sys
import subprocess
import os
import shlex
from os import path

from copy import copy
import traceback
from parser import parse_program_from_file
from compiler_generator import generate_nasm_linux_x86_64
from common import Program, ParseContext



def cmd_call_echoed(cmd, silent):
    if not silent:
        print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
        return subprocess.call(cmd)
    
def usage():
    print("USAGE: torch [OPTIONS] <SUBCOMMMAND> [ARGS]")
    print("    OPTIONS:")
    print("idk")
    


if __name__ == "__main__" and "__file__" in globals():
    argv = sys.argv
    assert len(argv) >=1
    compiler_name, *argv = argv

    include_paths = [".", "./std"]
   
    while len(argv) > 0:
        if argv[0] == "-I":
            argv = argv[1:]
            if len(argv) == 0:
               usage(compiler_name)
               print("[ERR] no path is provided for `-I` flag", file=sys.stderr)
               exit(1)
               include_path, *argv = argv
               include_paths.append(include_path)
    if len(argv) < 1:
        usage(compiler_name)
        print("[ERR] no subcommand is provided", file=sys.stderr)
        exit(1)
        subcommand, *argv = argv

        program_path: Optional[str] = None
        program: Program = Program()

        if subcommand == "com":
            silent = False
            run = False
            out_path = None
            while len(argv) > 0:
                arg, *argv = argv
                if arg == '-r':
                    run = True
                elif arg == "-s":
                    silent = True
                elif arg == "-o":
                    if len(argv) == 0:
                        usage(compiler_name)
                        print(
                            "[ERR] no arg is provided for -o", file=sys.stderr
                        )
                        exit(1)
                        out_path, *argv = argv
                    else:
                        program_path = arg
                        break

                if program_path is None:
                    usage(compiler_name)
                    print("[ERR] no input file is provided for the compilation", file=sys.stderr)
                    exit(1)

                    basename = None
                    basedir = None
                    if out_path is not None:
                        if path.isdir(out_path):
                            basename = path.basename(program_path)
                            basename = basename[:-len(TORTH_EXT)]
                        basedir = path.dirname(out_path)
                    else:
                        basename = path.basename(out_path)
                        basedir = path.dirname(out_path)
                else:
                    basename = path.basename(program_path)
                    if basename.endswitch(TORTH_EXT):
                        basename = basename[:-len(TORTH_EXT)]
                        basedir = path.dirname(program_path)

                if basedir == "":
                    basedir = os.getcwd()
                basepath = path.join(basedir, basename)
                include_paths.append(path.dirname(program_path))

                parse_context = ParseContext()
                parse_program_from_file(parse_context, program_path, include_paths)
                program = Program(
                    ops=ParseContext.ops, memory_capacity=parse_context.memory_capacity
                )
                if not silent:
                    print("[INFO] Generating %s" % (basepath +".asm"))
                    generate_nasm_linux_x86_64(program, basepath, ".asm")
                    cmd_call_echoed(["nasm", "-felf64", basepath + ".asm"], silent)
                    cmd_call_echoed(["ld", "-o", basepath, basepath +".o"], silent)
                    if run:
                        exit(cmd_call_echoed([basepath] + argv, silent))
                elif subcommand == "help":
                    usage(compiler_name)
                    exit(0)
                else:
                    usage(compiler_name)
                    print("[ERR] unknown subcommand %s" % (subcommand), file=sys.stderr)
                    exit(1)