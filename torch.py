import sys
import subprocess

iota_counter=0
def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter =0
    result = iota_counter
    iota_counter +=1
    return result

OP_PUSH=iota()
OP_PLUS=iota()
OP_MINUS=iota()
OP_DUMP=iota()
COUNT_OPS=iota()


def push(x):
    return(OP_PUSH,x)

def plus():
    return(OP_PLUS,)
def minus():
    return (OP_MINUS,)

def dump():
    return (OP_DUMP,)

def simulate(program):
    stack = []
    for op in program:
        assert COUNT_OPS == 4, "Exhaustive handling of operations"
        if op[0] == OP_PUSH:
            stack.append(op[1])
        elif op[0] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a+b)
        elif op[0] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b-a)
        elif op[0] == OP_DUMP:
            a = stack.pop()
            print(a)
        else:
            assert False, "unreachable"

def compile(program, out_file_path):
    with open(out_file_path, "w") as out:
        out.write("extern dump\n")
        out.write("global _start\n")
        out.write("segment .text\n")
        out.write("_start:\n")

        for op in program:
            assert COUNT_OPS == 4, "Exhaustive handling of ops in compilation"
            if op[0] == OP_PUSH:
                out.write("   ;; -- push %d --\n" % op[1])
                out.write("    push %d\n" % op[1])
            elif op[0] == OP_PLUS:
                out.write("   ;; -- plus --\n")
                out.write("   pop rax\n")
                out.write("   pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_MINUS:
                out.write("   ;; -- minus --\n")
                out.write("   pop rax\n")
                out.write("   pop rbx\n")
                out.write("    sub rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_DUMP:
                out.write("    ;; -- dump --\n")
                out.write("    pop rax\n")
                out.write("    mov rdi, rax\n")
                out.write("    call dump\n")
            else:
                assert False, "unreachable"

        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")

     

program = [push(34),push(35),plus(),dump(),push(500), push(80), minus(), push(420), dump()]

def usage():
        print("USAGE: TORCH <SUBCOMMAND> [ARGS]")
        print("SUBCOMMANDS:")
        print("    sim    Simulate the program")
        print("    com    Compiler the program")

def call_cmd(cmd):
    print(cmd)
    subprocess.call(cmd)

if __name__ == '__main__':
    if len(sys.argv) < 2:
        usage()
        print("ERR: no subcommand is provided")
        exit(1)

    subcommand = sys.argv[1]

    if subcommand == "sim":
        simulate(program)
    elif subcommand == "com":
        compile(program, "output.asm")
        call_cmd(["nasm","-felf64","output.asm"])
        # compile and link with dump.c
        call_cmd(["gcc","output.o","dump.c","-o","output"])
    else:
        usage()
        print("ERR: unkown subcommand %s" % (subcommand))
        exit(1)

