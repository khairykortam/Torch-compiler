from common import *

def generate_nasm_linux_x86_64(program, out_file_path):
    strs = []
    with open(out_file_path, "w") as out:
        out.write("BITS 64\n")
        out.write("segment .text\n")
        out.write("print:\n")
        out.write("    mov     r9, -3689348814741910323\n")
        out.write("    sub     rsp, 40\n")
        out.write("    mov     BYTE [rsp+31], 10\n")
        out.write("    lea     rcx, [rsp+30]\n")
        out.write(".L2:\n")
        out.write("    mov     rax, rdi\n")
        out.write("    lea     r8, [rsp+32]\n")
        out.write("    mul     r9\n")
        out.write("    mov     rax, rdi\n")
        out.write("    sub     r8, rcx\n")
        out.write("    shr     rdx, 3\n")
        out.write("    lea     rsi, [rdx+rdx*4]\n")
        out.write("    add     rsi, rsi\n")
        out.write("    sub     rax, rsi\n")
        out.write("    add     eax, 48\n")
        out.write("    mov     BYTE [rcx], al\n")
        out.write("    mov     rax, rdi\n")
        out.write("    mov     rdi, rdx\n")
        out.write("    mov     rdx, rcx\n")
        out.write("    sub     rcx, 1\n")
        out.write("    cmp     rax, 9\n")
        out.write("    ja      .L2\n")
        out.write("    lea     rax, [rsp+32]\n")
        out.write("    mov     edi, 1\n")
        out.write("    sub     rdx, rax\n")
        out.write("    xor     eax, eax\n")
        out.write("    lea     rsi, [rsp+32+rdx]\n")
        out.write("    mov     rdx, r8\n")
        out.write("    mov     rax, 1\n")
        out.write("    syscall\n")
        out.write("    add     rsp, 40\n")
        out.write("    ret\n")
        out.write("global _start\n")
        out.write("_start:\n")
        out.write("    mov [args_ptr], rsp\n")
        out.write("    mov rax, ret_stack_end\n")
        out.write("    mov [ret_stack_rsp], rax\n")
        
        for ip in range(len(program.ops)):
            op = program.ops[ip]
            assert len(OpType) == 19, "Exhaustive ops handling in generate_nasm_linux_x86_64"
            out.write("addr_%d:\n" % ip)
            
            if op.typ in [OpType.PUSH_INT, OpType.PUSH_BOOL, OpType.PUSH_PTR]:
                assert isinstance(op.operand, int), f"Expected int operand, got {op.operand}"
                out.write("    mov rax, %d\n" % op.operand)
                out.write("    push rax\n")
                
            elif op.typ == OpType.PUSH_STR:
                assert isinstance(op.operand, str), "Expected str operand"
                value = op.operand.encode("utf-8")
                n = len(value)
                out.write("    mov rax, %d\n" % n)
                out.write("    push rax\n")
                out.write("    push str_%d\n" % len(strs))
                strs.append(value)
                
            elif op.typ == OpType.PUSH_CSTR:
                assert isinstance(op.operand, str), "Expected str operand"
                value = op.operand.encode("utf-8") + b"\0"
                out.write("    push str_%d\n" % len(strs))
                strs.append(value)
                
            elif op.typ == OpType.PUSH_GLOBAL_MEM:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    mov rax, mem\n")
                out.write("    add rax, %d\n" % op.operand)
                out.write("    push rax\n")
                
            elif op.typ == OpType.PUSH_LOCAL_MEM:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    mov rax, [ret_stack_rsp]\n")
                out.write("    add rax, %d\n" % op.operand)
                out.write("    push rax\n")
                
            elif op.typ in [OpType.IF, OpType.IFSTAR]:
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    jz addr_%d\n" % op.operand)
                
            elif op.typ == OpType.WHILE:
                pass
                
            elif op.typ == OpType.ELSE:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    jmp addr_%d\n" % op.operand)
                
            elif op.typ == OpType.END:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    jmp addr_%d\n" % op.operand)
                
            elif op.typ == OpType.DO:
                out.write("    pop rax\n")
                out.write("    test rax, rax\n")
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    jz addr_%d\n" % op.operand)
                
            elif op.typ == OpType.SKIP_PROC:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    jmp addr_%d\n" % op.operand)
                
            elif op.typ == OpType.PREP_PROC:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    sub rsp, %d\n" % op.operand)
                out.write("    mov [ret_stack_rsp], rsp\n")
                out.write("    mov rsp, rax\n")
                
            elif op.typ == OpType.CALL:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    mov rax, rsp\n")
                out.write("    mov rsp, [ret_stack_rsp]\n")
                out.write("    call addr_%d\n" % op.operand)
                out.write("    mov [ret_stack_rsp], rsp\n")
                out.write("    mov rsp, rax\n")
                
            elif op.typ == OpType.INLINED:
                # ignored, it is needed purely for type checking
                pass
                
            elif op.typ == OpType.RET:
                assert isinstance(op.operand, int), "Expected int operand"
                out.write("    mov rax, rsp\n")
                out.write("    mov rsp, [ret_stack_rsp]\n")
                out.write("    add rsp, %d\n" % op.operand)
                out.write("    ret\n")
                
            elif op.typ == OpType.INTRINSIC:
                assert len(Intrinsic) == 44, "Exhaustive intrinsic handling in generate_nasm_linux_x86_64()"
                assert isinstance(op.operand, Intrinsic), "Expected Intrinsic operand"
                intrinsic = op.operand
                
                if intrinsic == Intrinsic.PLUS:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    add rax, rbx\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.MINUS:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    sub rbx, rax\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.MUL:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    mul rbx\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.MAX:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    cmp rbx, rax\n")
                    out.write("    cmovge rax, rbx\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.DIVMOD:
                    out.write("    xor rdx, rdx\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    div rbx\n")
                    out.write("    push rax\n")
                    out.write("    push rdx\n")
                elif intrinsic == Intrinsic.SHR:
                    out.write("    pop rcx\n")
                    out.write("    pop rbx\n")
                    out.write("    shr rbx, cl\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.SHL:
                    out.write("    pop rcx\n")
                    out.write("    pop rbx\n")
                    out.write("    shl rbx, cl\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.OR:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    or rbx, rax\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.AND:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    and rbx, rax\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.NOT:
                    out.write("    pop rax\n")
                    out.write("    not rax\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.PRINT:
                    out.write("    pop rdi\n")
                    out.write("    call print\n")
                elif intrinsic == Intrinsic.EQ:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmove rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.GT:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmovg rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.LT:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmovl rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.GE:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmovge rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.LE:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmovle rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.NE:
                    out.write("    mov rcx, 0\n")
                    out.write("    mov rdx, 1\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rax\n")
                    out.write("    cmp rax, rbx\n")
                    out.write("    cmovne rcx, rdx\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.DUP:
                    out.write("    pop rax\n")
                    out.write("    push rax\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SWAP:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    push rax\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.DROP:
                    out.write("    pop rax\n")
                elif intrinsic == Intrinsic.OVER:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    push rbx\n")
                    out.write("    push rax\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.ROT:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    pop rcx\n")
                    out.write("    push rbx\n")
                    out.write("    push rax\n")
                    out.write("    push rcx\n")
                elif intrinsic == Intrinsic.LOAD8:
                    out.write("    pop rax\n")
                    out.write("    xor rbx, rbx\n")
                    out.write("    mov bl, [rax]\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.STORE8:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    mov [rax], bl\n")
                elif intrinsic == Intrinsic.LOAD16:
                    out.write("    pop rax\n")
                    out.write("    xor rbx, rbx\n")
                    out.write("    mov bx, [rax]\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.STORE16:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    mov [rax], bx\n")
                elif intrinsic == Intrinsic.LOAD32:
                    out.write("    pop rax\n")
                    out.write("    xor rbx, rbx\n")
                    out.write("    mov ebx, [rax]\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.STORE32:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    mov [rax], ebx\n")
                elif intrinsic == Intrinsic.LOAD64:
                    out.write("    pop rax\n")
                    out.write("    xor rbx, rbx\n")
                    out.write("    mov rbx, [rax]\n")
                    out.write("    push rbx\n")
                elif intrinsic == Intrinsic.STORE64:
                    out.write("    pop rax\n")
                    out.write("    pop rbx\n")
                    out.write("    mov [rax], rbx\n")
                elif intrinsic == Intrinsic.ARGC:
                    out.write("    mov rax, [args_ptr]\n")
                    out.write("    mov rax, [rax]\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.ARGV:
                    out.write("    mov rax, [args_ptr]\n")
                    out.write("    add rax, 8\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.ENVP:
                    out.write("    mov rax, [args_ptr]\n")
                    out.write("    mov rax, [rax]\n")
                    out.write("    add rax, 2\n")
                    out.write("    shl rax, 3\n")
                    out.write("    mov rbx, [args_ptr]\n")
                    out.write("    add rbx, rax\n")
                    out.write("    push rbx\n")
                elif intrinsic in [Intrinsic.CAST_PTR, Intrinsic.CAST_INT, Intrinsic.CAST_BOOL]:
                    pass
                elif intrinsic == Intrinsic.SYSCALL0:
                    out.write("    pop rax\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL1:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL2:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    pop rsi\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL3:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    pop rsi\n")
                    out.write("    pop rdx\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL4:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    pop rsi\n")
                    out.write("    pop rdx\n")
                    out.write("    pop r10\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL5:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    pop rsi\n")
                    out.write("    pop rdx\n")
                    out.write("    pop r10\n")
                    out.write("    pop r8\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.SYSCALL6:
                    out.write("    pop rax\n")
                    out.write("    pop rdi\n")
                    out.write("    pop rsi\n")
                    out.write("    pop rdx\n")
                    out.write("    pop r10\n")
                    out.write("    pop r8\n")
                    out.write("    pop r9\n")
                    out.write("    syscall\n")
                    out.write("    push rax\n")
                elif intrinsic == Intrinsic.STOP:
                    pass
                else:
                    assert False, "unreachable"
            else:
                assert False, "unreachable"

        out.write("addr_%d:\n" % len(program.ops))
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0\n")
        out.write("    syscall\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s\n" % (index, ",".join(map(str, list(s)))))
        out.write("segment .bss\n")
        out.write("args_ptr: resq 1\n")
        out.write("ret_stack_rsp: resq 1\n")
        out.write("ret_stack: resb %d\n" % RET_STACK_CAP)
        out.write("ret_stack_end:\n")
        out.write("mem: resb %d\n" % program.memory_capacity)
