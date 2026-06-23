import sys
import subprocess

# simple iota for op ids
iota_counter = 0

def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter = 0
    result = iota_counter
    iota_counter += 1
    return result

OP_PUSH = iota()
OP_PLUS = iota()
OP_MINUS = iota()
OP_EQUAL = iota()
OP_DUMP = iota()
OP_IF = iota()
OP_ELSE = iota()
OP_END = iota()
COUNT_OPS = iota()


def push(x):
    return (OP_PUSH, x)


def plus():
    return (OP_PLUS,)


def minus():
    return (OP_MINUS,)


def dump():
    return (OP_DUMP,)

def equal():
    return (OP_EQUAL,)
def iff():
    return (OP_IF,)
def end():
    return (OP_END,)
def _else():
    return (OP_ELSE,)

def simulate(program):
    stack = []
    ip = 0
    while ip < len(program):
        assert COUNT_OPS == 8, "Exhaustive handling of operations"
        op = program[ip]
        if op[0] == OP_PUSH:
            stack.append(op[1])
            ip+=1
        elif op[0] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a + b)
            ip+=1
        elif op[0] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b - a)
            ip+=1
        elif op[0] == OP_EQUAL:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a==b))
            ip+=1
        elif op[0] == OP_IF:
            a = stack.pop()
            if a == 0:
                assert len(op) >= 2, "if isn't ifing yet"
# jump instruction 
                ip = op[1]
            else:
                ip+=1
        elif op[0] == OP_ELSE:
            assert len(op) >= 2, "else doesn't have a reference to the end of its block."
            ip = op[1]
        elif op[0] == OP_END:
         ip+=1
        elif op[0] == OP_DUMP:
            a = stack.pop()
            print(a)
            ip+=1
        else:
            assert False, "unreachable"


def compile(program, out_file_path):
    # compiling the code
    with open(out_file_path, "w") as out:
        out.write("BITS 64\n")
        out.write("segment .text\n")
        out.write("global _start\n")
        out.write("\n")

        # dump function - writes decimal representation of rdi to fd 1
        out.write("dump:\n")
        out.write("    push rbp\n")
        out.write("    mov rbp, rsp\n")
        out.write("    sub rsp, 64\n")
        out.write("    mov qword [rbp-56], rdi\n")
        out.write("    mov qword [rbp-8], 1\n")
        out.write("    mov eax, 32\n")
        out.write("    sub rax, qword [rbp-8]\n")
        out.write("    mov byte [rbp-48 + rax], 10\n")
        out.write(".L2:\n")
        out.write("    mov rcx, qword [rbp-56]\n")
        out.write("    mov rax, rcx\n")
        out.write("    mov rdx, -3689348814741910323\n")
        out.write("    mul rdx\n")
        out.write("    shr rdx, 3\n")
        out.write("    mov rax, rdx\n")
        out.write("    shl rax, 2\n")
        out.write("    add rax, rdx\n")
        out.write("    add rax, rax\n")
        out.write("    sub rcx, rax\n")
        out.write("    mov rdx, rcx\n")
        out.write("    mov eax, edx\n")
        out.write("    lea rdx, [rax + 48]\n")
        out.write("    mov eax, 31\n")
        out.write("    sub rax, qword [rbp-8]\n")
        out.write("    mov byte [rbp-48 + rax], dl\n")
        out.write("    add qword [rbp-8], 1\n")
        out.write("    mov rax, qword [rbp-56]\n")
        out.write("    mov rdx, -3689348814741910323\n")
        out.write("    mul rdx\n")
        out.write("    mov rax, rdx\n")
        out.write("    shr rax, 3\n")
        out.write("    mov qword [rbp-56], rax\n")
        out.write("    cmp qword [rbp-56], 0\n")
        out.write("    jne .L2\n")
        out.write("    mov eax, 32\n")
        out.write("    sub rax, qword [rbp-8]\n")
        out.write("    lea rdx, [rbp-48]\n")
        out.write("    lea rcx, [rdx + rax]\n")
        out.write("    mov rax, qword [rbp-8]\n")
        out.write("    mov rdx, rax\n")
        out.write("    mov rsi, rcx\n")
        out.write("    mov rdi, 1\n")
        out.write("    mov rax, 1\n")
        out.write("    syscall\n")
        out.write("    nop\n")
        out.write("    leave\n")
        out.write("    ret\n")
        out.write("\n")
        out.write("global _start\n")
        # _start - execute program then exit
        out.write("_start:\n")

        for ip in range(len(program)):
            op = program[ip]
            assert COUNT_OPS == 8, "Exhaustive handling of ops in compilation"
            if op[0] == OP_PUSH:
                out.write("   ;; -- push %d --\n" % op[1])
                out.write("    push %d\n" % op[1])
            elif op[0] == OP_PLUS:
                out.write("   ;; -- plus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_MINUS:
                out.write("   ;; -- minus --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    sub rbx, rax\n")
                out.write("    push rbx\n")
            elif op[0] == OP_DUMP:
                out.write("    ;; -- dump --\n")
                out.write("    pop rdi\n")
                out.write("    call dump\n")
            elif op[0] == OP_EQUAL:
                out.write("    ;; equal -- \n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rax, rbx\n")
                out.write("    cmove rcx, rdx\n")
                out.write("    push rcx\n")
            elif op[0] == OP_IF:
                out.write("    ;;  -- if --\n")
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert len(op) == 2, "if isn't ifing yet"
                out.write("    jz addr_%d\n" % op[1])
            elif op[0] == OP_ELSE:
             out.write("    ;; -- else --\n")
             assert len(op)>= 2, "else instruction does not have a reference to the end of its block."
             out.write("    jmp addr_%d\n" % op[1])
             out.write("addr_%d:\n" % (ip + 1))
            elif op[0] == OP_END:
             out.write("addr_%d:\n"%ip)
            else:
                assert False, "unreachable"

        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")



def usage():
    print("USAGE: TORCH <SUBCOMMAND> <FILE>")
    print("SUBCOMMANDS:")
    print("    sim <file>    Simulate the program")
    print("    com <file>    Compile the program")

def parse_token_as_op(token):
    assert COUNT_OPS == 8, "Exhuastive op handling in parse"
    (file_path, row, col, word) = token
    if word == '+':
        return plus()
    elif word == '-':
        return minus()
    elif word == '<':
        return dump()
    elif word == '=':
        return equal()
    elif word =='if':
        return iff()
    elif word == 'end':
        return end()
    elif word == 'else':
        return _else()
    else:
        try:
            return push(int(word))
        except ValueError as err:
            print("%s:%d:%d: %s" % (file_path, row, col,err ))
            exit(1)

def crossreference_block(program):
    stack = []
    for ip in range(len(program)):
        op = program[ip]
        assert COUNT_OPS == 8, "Exhaustive handling of ops in cross-ref"
        if op[0] == OP_IF:
            stack.append(ip)
        elif op[0] == OP_ELSE:
         if_ip = stack.pop()
         assert program[if_ip][0] == OP_IF, "else can only be used with if blocks"
         program[if_ip] = (OP_IF, ip+1)
         stack.append(ip)
        elif op[0] == OP_END:
            block_ip = stack.pop()
            if program[block_ip][0] == OP_IF or program[block_ip][0] == OP_ELSE:
                program[block_ip] = (program[block_ip][0], ip)
            # elif program[block_ip][0] == OP_WHILE:
            else:
             assert False , "End just can't"
    return program

def find_col(line,start,predicate):
    i = start
    while i < len(line) and not predicate(line[i]):
        i += 1
    return i
    
def lex_line(line):
    # find first non-space column
    col = find_col(line, 0, lambda c: not c.isspace())
    while col < len(line):
        # find end of token (first space after col)
        col_end = find_col(line, col, lambda c: c.isspace())
        yield (col, line[col:col_end])
        # find start of next token
        col = find_col(line, col_end, lambda c: not c.isspace())


def lex_file(file_path):
    with open(file_path, "r") as f:
       for (row,line) in enumerate(f.readlines()):
            for (col,token) in lex_line(line):
                yield(file_path,row,col,token)
             
            


def load_program_from_file(file_path):
   return  crossreference_block([parse_token_as_op(token) for token in lex_file(file_path)])


def call_cmd(cmd):
    print(cmd)
    subprocess.call(cmd)

if __name__ == '__main__':
    if len(sys.argv) < 3:
        usage()
        print("ERR: no subcommand or file provided")
        exit(1)

    prog_name = sys.argv[0]
    subcommand = sys.argv[1]
    file_path = sys.argv[2]

    program = load_program_from_file(file_path)

    if subcommand == "sim":
        simulate(program)
    elif subcommand == "com":
        if len(sys.argv) < 1:
            usage(prog_name)
            print("ERR: no input file provided for compilation")
            exit(1)
            program = load_program_from_file(program_path) 
        compile(program, "output.asm")
        call_cmd(["nasm", "-felf64", "output.asm"])
        # link only the generated object (dump implemented in assembly)
        call_cmd(["ld", "-o", "output", "output.o"])
    else:
        usage()
        print("ERR: unknown subcommand %s" % (subcommand))
        exit(1)
