import sys
import subprocess
from os import path

iota_counter = 0
def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter = 0
    result = iota_counter
    iota_counter += 1
    return result

OP_PUSH_INT = iota(True)
OP_PUSH_STR = iota()
OP_PLUS = iota()
OP_MINUS = iota()
OP_MULT = iota()
OP_DIV = iota()
OP_MOD = iota()
OP_EQUAL = iota()
OP_NOT_EQUAL = iota()
OP_SHR = iota()
OP_SHL = iota()
OP_BAND = iota()
OP_BOR = iota()
OP_DUMP = iota()
OP_IF = iota()
OP_ELSE = iota()
MACRO = iota()
INCLUDE = iota()
OP_END = iota()
OP_DUP = iota()
OP_GT= iota()
OP_LT = iota()
OP_WHILE = iota()
OP_DO = iota()
OP_MEM = iota()
OP_LOAD = iota()
OP_STORE = iota()
OP_SYSCALL1 = iota()
OP_SYSCALL3 = iota()
COUNT_OPS = iota()
OP_OVER = iota()
OP_SWAP = iota()
OP_DROP = iota()
OP_INCLUDE = INCLUDE

TOKEN_WORD = iota(True)
TOKEN_INT = iota()
TOKEN_STR=iota()
COUNT_TOKENS=iota()

MEM_CAPACITY = 640000
STR_CAPACITY = 640000


assert COUNT_OPS == 29, "update BUILTIN_WORDS"
BUILTIN_WORDS = {
    "+": OP_PLUS,
    "-": OP_MINUS,
    "*": OP_MULT,
    "/": OP_DIV,
    "%": OP_MOD,
    "=": OP_EQUAL,
    "!=": OP_NOT_EQUAL,
    ">": OP_GT,
    "<": OP_LT,
    "shl": OP_SHL,
    "shr": OP_SHR,
    "&": OP_BAND,
    "|": OP_BOR,
    "dump": OP_DUMP,
    "if": OP_IF,
    "else": OP_ELSE,
    "end": OP_END,
    "dup": OP_DUP,
    "while": OP_WHILE,
    "do": OP_DO,
    "mem": OP_MEM,
    ".": OP_STORE,
    ",": OP_LOAD,
    "syscall1": OP_SYSCALL1,
    "syscall3": OP_SYSCALL3,
    "over": OP_OVER,
    "swap": OP_SWAP,
    "drop": OP_DROP,
}




def loc_str(loc):
    return "%s:%d:%d" % loc

def simulate(program, argv):
    stack = []
    mem = bytearray(STR_CAPACITY + MEM_CAPACITY)
    str_size = 1

    stack.append(0)
    for arg in reversed(argv):
        value = arg.encode('utf-8')
        n = len(value)
        mem[str_size:str_size+n] = value
        mem[str_size+n] = 0
        stack.append(str_size)
        str_size += n + 1
        assert str_size <= STR_CAPACITY, "String buffer overflow"
    stack.append(len(argv))
    ip = 0
    while ip < len(program):
        assert COUNT_OPS == 29, "Exhaustive handling of operations"
        op = program[ip]
        if op['type'] == OP_PUSH_INT:
            stack.append(op['value'])
            ip+=1
        elif op['type'] == OP_PUSH_STR:
            bs = bytes(op['value'], 'utf-8')
            n = len(bs)
            stack.append(n)
            if 'addr' not in op:
                op['addr'] = str_size
                mem[str_size:str_size+n] = bs
                str_size += n
                stack.append(op['addr'])
            assert str_size <= STR_CAPACITY, "string buffer overflow"
            stack.append(op['addr'])
            ip+=1
        elif op['type'] == OP_PLUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(a + b)
            ip+=1
        elif op['type'] == OP_MINUS:
            a = stack.pop()
            b = stack.pop()
            stack.append(b - a)
            ip+=1
        elif op['type'] == OP_MULT:
            a = stack.pop()
            b = stack.pop()
            stack.append(a*b)
            ip+=1
        elif op['type'] == OP_DIV:
            a = stack.pop()
            b = stack.pop()
            stack.append(b//a)
            ip+=1
        elif op['type'] == OP_MOD:
            a = stack.pop()
            b = stack.pop()
            stack.append(b%a)
            ip+=1
        elif op['type'] == OP_EQUAL:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a==b))
            ip+=1
        elif op['type'] == OP_NOT_EQUAL:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(a!=b))
            ip+=1
        elif op['type'] == OP_SHR:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b >> a))
            ip+=1
        elif op['type'] == OP_SHL:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b << a))
            ip+=1
        elif op['type'] == OP_BAND:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b&a))
            ip+=1
        elif op['type'] == OP_BOR:
            a = stack.pop()
            b = stack.pop()
            stack.append(int(b|a))
            ip+=1

        elif op['type'] == OP_IF:
            a = stack.pop()
            if a == 0:
                assert 'jmp' in op, "if isn't ifying"
                ip = op['jmp']
            else:
                ip+=1
        elif op['type'] == OP_ELSE:
            assert 'jmp' in op, "else doesn't have a reference to the end of its block."
            ip = op['jmp']
        elif op['type'] == OP_END:
         assert 'jmp' in op, "end doesn't have a reference to the next instruction."
         ip = op['jmp']
        elif op['type'] == OP_DUMP:
            a = stack.pop()
            print(a)
            ip+=1
        elif op['type'] == OP_DUP:
          a = stack.pop()
          stack.append(a)
          stack.append(a)
          ip+=1
        elif op['type'] == OP_GT:
            b = stack.pop()
            a = stack.pop()
            stack.append(int(a > b))
            ip+=1
        elif op['type'] == OP_LT:
            b = stack.pop()
            a = stack.pop()
            stack.append(int(a < b))
            ip+=1
        elif op['type'] == OP_WHILE:
            ip += 1
        elif op['type'] == OP_DO:
            a = stack.pop()
            if a == 0:
                assert 'jmp' in op, "do instruction doesn't have a reference to the end of its block."
                ip = op['jmp']
            else:
                ip += 1
        elif op['type'] == MACRO:
            assert False, "unreachable, All macros should be eliminated at compilation"
        elif op['type'] == OP_INCLUDE:
            assert False, "includes should be expanded before simulation"

        elif op['type'] == OP_MEM:
            stack.append(STR_CAPACITY)
            ip+=1
        elif op['type'] == OP_LOAD:
            addr = stack.pop()
            byte = mem[addr]
            stack.append(byte)
            ip+=1
        elif op['type'] == OP_STORE:
            value = stack.pop()
            addr = stack.pop()
            mem[addr] = value & 0xFF
            ip+=1
        elif op['type'] == OP_SWAP:
            a = stack.pop()
            b = stack.pop()
            stack.append(a)
            stack.append(b)
            ip+=1
        elif op['type'] == OP_DROP:
            stack.pop()
            ip+=1
        elif op['type'] == OP_OVER:
         a = stack.pop()
         b = stack.pop()
         stack.append(b)
         stack.append(a)
         stack.append(b)
         ip+=1 


        elif op['type'] == OP_SYSCALL1:
            assert False, "I'm lazy to implement this, I won't use it either way."
        elif op['type'] == OP_SYSCALL3:
            syscall_number = stack.pop()
            arg1 = stack.pop()
            arg2 = stack.pop()
            arg3 = stack.pop()
            if syscall_number == 1:
              fd = arg1
              buf = arg2
              count = arg3
              s = mem[buf:buf+count].decode('utf-8')
              if fd == 1:
                print(s, end='')
              elif fd == 2:
                  print(s, end='', file=sys.stderr)
              else:
                  assert False, "unknown file descriptor %d" % fd
            else:
                assert False, "unknown syscall number %d" %syscall_number
            ip+=1

        else:
            assert False, "unreachable"


def compile_to_nasm_linux_x86_64(program, out_file_path):
    strs = []
    with open(out_file_path, "w") as out:
        out.write("BITS 64\n")
        out.write("segment .text\n")
        out.write("global _start\n")
        out.write("\n")

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
        out.write("    leave\n")
        out.write("    ret\n")
        out.write("\n")
        out.write("_start:\n")

        for ip, op in enumerate(program):
            assert COUNT_OPS == 29, "Exhaustive handling of ops in compilation"
            out.write("addr_%d:\n" % ip)
            if op['type'] == OP_PUSH_INT:
                out.write("    push %d\n" % op['value'])
            elif op['type'] == OP_PUSH_STR:
                idx = len(strs)
                strs.append(op['value'])
                out.write("    mov rax, %d\n" % len(op['value']))
                out.write("    push rax\n")
                out.write("    push str_%d\n" % idx)
            elif op['type'] == OP_PLUS:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_MINUS:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    sub rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_MULT:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    imul rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_DIV:
                out.write("    xor rdx, rdx\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    div rbx\n")
                out.write("    push rax\n")
            elif op['type'] == OP_MOD:
                out.write("    xor rdx, rdx\n")
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    div rbx\n")
                out.write("    push rdx\n")
            elif op['type'] == OP_DUMP:
                out.write("    pop rdi\n")
                out.write("    call dump\n")
            elif op['type'] == OP_EQUAL:
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rbx, rax\n")
                out.write("    cmove rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_NOT_EQUAL:
                out.write("    ;; -- not equal --\n")
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rbx, rax\n")
                out.write("    cmovne rcx, rdx\n")
                out.write("    push rcx\n")

            elif op['type'] == OP_SHL:
                out.write("    pop rcx\n")
                out.write("    pop rbx\n")
                out.write("    shl rbx, cl\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_SHR:
                out.write("    pop rcx\n")
                out.write("    pop rbx\n")
                out.write("    shr rbx, cl\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_BAND:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    and rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_BOR:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    or rbx, rax\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_IF:
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert 'jmp' in op, "if instruction doesn't have a reference to the end of its block"
                out.write("    jz addr_%d\n" % op['jmp'])
            elif op['type'] == OP_ELSE:
                assert 'jmp' in op, "else instruction doesn't have a reference to the end of its block"
                out.write("    jmp addr_%d\n" % op['jmp'])
            elif op['type'] == OP_END:
                assert 'jmp' in op, "end instruction does not have a reference to the next instruction to jump to"
                if ip + 1 != op['jmp']:
                    out.write("    jmp addr_%d\n" % op['jmp'])
            elif op['type'] == OP_DUP:
                out.write("    pop rax\n")
                out.write("    push rax\n")
                out.write("    push rax\n")
            elif op['type'] == OP_GT:
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rbx, rax\n")
                out.write("    cmovg rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_LT:
                out.write("    mov rcx, 0\n")
                out.write("    mov rdx, 1\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    cmp rbx, rax\n")
                out.write("    cmovl rcx, rdx\n")
                out.write("    push rcx\n")
            elif op['type'] == OP_WHILE:
                pass
            elif op['type'] == OP_DO:
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                out.write("    jz addr_%d\n" % op['jmp'])
            elif op['type'] == OP_MEM:
                out.write("    push mem\n")
            elif op['type'] == OP_LOAD:
                out.write("    pop rax\n")
                out.write("    xor rbx, rbx\n")
                out.write("    mov bl, [rax]\n")
                out.write("    push rbx\n")
            elif op['type'] == OP_STORE:
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    mov [rax], bl\n")
            elif op['type'] == OP_SYSCALL3:
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    pop rsi\n")
                out.write("    pop rdx\n")
                out.write("    syscall\n")
            elif op['type'] == OP_SYSCALL1:
                out.write("    pop rax\n")
                out.write("    pop rdi\n")
                out.write("    syscall\n")
            elif op['type'] == OP_SWAP:
                out.write("    ;; -- swap --\n")
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    push rbx\n")
                out.write("    push rax\n")
            elif op['type'] == OP_DROP:
                out.write("    ;; -- drop --\n")
                out.write("    pop rax\n")
            elif op['type'] == OP_OVER:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    push rbx\n")
                out.write("    push rax\n")
                out.write("    push rbx\n")
            elif op['type'] == MACRO:
                assert False, "unreachable, all macros should be eliminated by the compilation step"
            elif op['type'] == INCLUDE:
                assert False, "unreachable, all includes should be eliminated by the compilation step"
            else:
                assert False, "unreachable"

        out.write("addr_%d:\n" % len(program))
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s\n" % (index, ','.join(map(hex, list(bytes(s, 'utf-8'))))))
        out.write("segment .bss\n")
        out.write("mem: resb %d\n" % MEM_CAPACITY)


def compile_to_wasm(program, out_file_path):
    strs = []
    with open(out_file_path, "w") as out:
        pass



def usage():
    print("USAGE: TORCH <SUBCOMMAND> <FILE>")
    print("SUBCOMMANDS:")
    print("    sim <file>    Simulate the program")
    print("    com <file>    Compile the program")
    # print("    wasm <file>   Compile the program to WebAssembly")

def parse_token_as_op(token):
    assert COUNT_TOKENS == 3, "Exhuastive token handing in parse_token_as_op"
    if token['type'] == TOKEN_WORD:
        if token['value'] in BUILTIN_WORDS:
            return {'type': BUILTIN_WORDS[token['value']], 'loc': token['loc']}
        else:
         print("%s:%d:%d: unknown word '%s'" %(token['loc'] + (token['value'], )))
         exit(1)
    elif token['type'] == TOKEN_STR:
         return {'type': OP_PUSH_STR, 'value': token['value'], 'loc': token['loc']}
    elif token['type'] == TOKEN_INT:
         return {'type': OP_PUSH_INT, 'value':token['value'], 'loc': token['loc']}
    else:
        assert False, "unreachable"

   
# @dataclass
# class Macro:
#     loc: Loc
#     tokens: List[Token]


def crossreference_block(program):
    stack = []
    for ip, op in enumerate(program):
        assert COUNT_OPS == 29, "Exhaustive handling of ops in cross-ref"
        if op['type'] == OP_IF:
            stack.append(("if", ip))
        elif op['type'] == OP_ELSE:
            assert stack, "else without matching if"
            if_ip = stack.pop()
            assert program[if_ip[1]]['type'] == OP_IF, "else can only be used with if blocks"
            program[if_ip[1]]['jmp'] = ip + 1
            stack.append(("else", ip))
        elif op['type'] == OP_END:
            assert stack, "end without matching block"
            block_ip = stack.pop()
            if program[block_ip[1]]['type'] == OP_IF:
                program[block_ip[1]]['jmp'] = ip + 1
                program[ip]['jmp'] = ip + 1
            elif program[block_ip[1]]['type'] == OP_ELSE:
                program[block_ip[1]]['jmp'] = ip
                program[ip]['jmp'] = ip + 1
            elif program[block_ip[1]]['type'] == OP_WHILE:
                program[block_ip[1]]['jmp'] = ip
                program[ip]['jmp'] = block_ip[1]
            elif program[block_ip[1]]['type'] == OP_DO:
                program[block_ip[1]]['jmp'] = ip + 1
                program[ip]['jmp'] = block_ip[2]
        elif op['type'] == OP_WHILE:
            stack.append(("while", ip))
        elif op['type'] == OP_DO:
            assert stack, "do without matching while"
            while_ip = stack.pop()
            assert program[while_ip[1]]['type'] == OP_WHILE, "do can only be used with while blocks"
            stack.append(("do", ip, while_ip[1]))

    return program


def find_col(line, start, predicate):
    i = start
    while i < len(line) and not predicate(line[i]):
        i += 1
    return i


def lex_line(line):
    col = find_col(line, 0, lambda c: not c.isspace())
    while col < len(line):
        if line[col] == '"':
            col_end = find_col(line, col + 1, lambda x: x == '"')
            assert col_end < len(line), "unterminated string"
            text_of_token = line[col + 1:col_end]
            yield(col, (TOKEN_STR, text_of_token))
            col = find_col(line, col_end + 1, lambda x: not x.isspace())
            continue

        col_end = find_col(line, col, lambda c: c.isspace())
        text_of_token = line[col:col_end]
        try:
            yield(col, (TOKEN_INT, int(text_of_token)))
        except ValueError:
            yield(col, (TOKEN_WORD, text_of_token))
        col = find_col(line, col_end, lambda c: not c.isspace())


def lex_file(file_path):
    with open(file_path, "r") as f:
        for row, line in enumerate(f.readlines(), 1):
            for col, token in lex_line(line.split('//')[0]):
                token_type, token_value = token
                yield({'type': token_type, 'loc': (file_path, row, col + 1), 'value': token_value})


def load_program_from_file(file_path):
    macros = {}
    expanded_tokens = []
    pending = [(list(lex_file(file_path)), file_path)]
    while pending:
        tokens, current_file = pending.pop()
        index = 0
        while index < len(tokens):
            token = tokens[index]
            if token['type'] == TOKEN_WORD and token['value'] == 'macro':
                assert index + 1 < len(tokens) and tokens[index + 1]['type'] == TOKEN_WORD, "expected macro name"
                name = tokens[index + 1]['value']
                body = []
                depth = 1
                j = index + 2
                control_stack = []
                while j < len(tokens):
                    tok = tokens[j]
                    if tok['type'] == TOKEN_WORD and tok['value'] == 'macro':
                        depth += 1
                        body.append(tok)
                    elif tok['type'] == TOKEN_WORD and tok['value'] in ('if', 'while', 'do'):
                        control_stack.append(tok['value'])
                        body.append(tok)
                    elif tok['type'] == TOKEN_WORD and tok['value'] == 'else':
                        assert control_stack and control_stack[-1] == 'if', "else without matching if in macro body"
                        body.append(tok)
                    elif tok['type'] == TOKEN_WORD and tok['value'] == 'end':
                        if control_stack:
                            control_stack.pop()
                            body.append(tok)
                        elif depth > 1:
                            depth -= 1
                            body.append(tok)
                        else:
                            break
                    else:
                        body.append(tok)
                    j += 1
                assert depth == 1 and not control_stack, "unterminated macro"
                macros[name] = body
                index = j + 1
                continue

            if token['type'] == TOKEN_WORD and token['value'] == 'include':
                assert index + 1 < len(tokens) and tokens[index + 1]['type'] == TOKEN_STR, "expected include path"
                include_path = tokens[index + 1]['value']
                include_full_path = path.join(path.dirname(current_file), include_path)
                pending.append((list(lex_file(include_full_path)), include_full_path))
                index += 2
                continue

            if token['type'] == TOKEN_WORD and token['value'] in macros:
                expanded_tokens.extend(macros[token['value']])
            else:
                expanded_tokens.append(token)
            index += 1

    return crossreference_block([parse_token_as_op(token) for token in expanded_tokens])


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
        simulate(program, sys.argv[3:])
    elif subcommand == "com":
        if len(sys.argv) < 1:
            usage(prog_name)
            print("ERR: no input file provided for compilation")
            exit(1)
            program = load_program_from_file(program_path) 
        compile_to_nasm_linux_x86_64(program, "output.asm")
        call_cmd(["nasm", "-felf64", "output.asm"])
        # link only the generated object (dump implemented in assembly)
        call_cmd(["ld", "-o", "output", "output.o"])
    elif subcommand == "wasm":
        if len(sys.argv) < 1:
            usage(prog_name)
            print("ERR: no input file provided for compilation")
            exit(1)
            program = load_program_from_file(program_path)
            compile_to_wasm(program, "output.wasm")
    else:
        usage()
        print("ERR: unknown subcommand %s" % (subcommand))
        exit(1)
