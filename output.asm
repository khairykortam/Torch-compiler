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
   ;; -- push 10 --
    push 10
    ;; -- dup --
    pop rax
    push rax
    push rax
    ;; -- dump --
    pop rdi
    call dump
    ;; -- dup --
    pop rax
    push rax
    push rax
    ;; -- dump --
    pop rdi
    call dump
    ;; -- dup --
    pop rax
    push rax
    push rax
    ;; -- dump --
    pop rdi
    call dump
   ;; -- push 69 --
    push 69
   ;; -- push 420 --
    push 420
    ;; -- gt -- 
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    ;;  -- if --
    pop rax
    test rax, rax
    jz addr_14
   ;; -- push 1 --
    push 1
    ;; -- dump --
    pop rdi
    call dump
    ;; -- else --
    jmp addr_16
addr_14:
   ;; -- push 0 --
    push 0
    ;; -- dump --
    pop rdi
    call dump
addr_16:
    mov rax, 60
    mov rdi, 0
    syscall
