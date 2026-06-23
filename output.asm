BITS 64
segment .text
global _start

dump:
    push rbp
    mov rbp, rsp
    sub rsp, 64
    mov qword [rbp-56], rdi
    mov qword [rbp-8], 1
    mov eax, 32
    sub rax, qword [rbp-8]
    mov byte [rbp-48 + rax], 10
.L2:
    mov rcx, qword [rbp-56]
    mov rax, rcx
    mov rdx, -3689348814741910323
    mul rdx
    shr rdx, 3
    mov rax, rdx
    shl rax, 2
    add rax, rdx
    add rax, rax
    sub rcx, rax
    mov rdx, rcx
    mov eax, edx
    lea rdx, [rax + 48]
    mov eax, 31
    sub rax, qword [rbp-8]
    mov byte [rbp-48 + rax], dl
    add qword [rbp-8], 1
    mov rax, qword [rbp-56]
    mov rdx, -3689348814741910323
    mul rdx
    mov rax, rdx
    shr rax, 3
    mov qword [rbp-56], rax
    cmp qword [rbp-56], 0
    jne .L2
    mov eax, 32
    sub rax, qword [rbp-8]
    lea rdx, [rbp-48]
    lea rcx, [rdx + rax]
    mov rax, qword [rbp-8]
    mov rdx, rax
    mov rsi, rcx
    mov rdi, 1
    mov rax, 1
    syscall
    nop
    leave
    ret

global _start
_start:
addr_0:
   ;; -- push 10 --
    push 10
addr_1:
    ;; -- while --
addr_2:
    ;; -- dup --
    pop rax
    push rax
    push rax
addr_3:
   ;; -- push 0 --
    push 0
addr_4:
    ;; -- gt -- 
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rbx, rax
    cmovg rcx, rdx
    push rcx
addr_5:
    ;; -- do  --
    pop rax
 test rax, rax
    jz addr_11
addr_6:
    ;; -- dup --
    pop rax
    push rax
    push rax
addr_7:
    ;; -- dump --
    pop rdi
    call dump
addr_8:
   ;; -- push 1 --
    push 1
addr_9:
   ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_10:
    ;; --  end --
    jmp addr_1
addr_11:
    mov rax, 60
    mov rdi, 0
    syscall
