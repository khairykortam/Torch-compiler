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
   ;; -- push 34 --
    push 34
   ;; -- push 35 --
    push 35
   ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
    ;; -- dump --
    pop rdi
    call dump
   ;; -- push 500 --
    push 500
   ;; -- push 80 --
    push 80
   ;; -- minus --
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
    ;; -- dump --
    pop rdi
    call dump
   ;; -- push 50 --
    push 50
   ;; -- push 50 --
    push 50
    ;; equal -- 
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    ;; -- dump --
    pop rdi
    call dump
   ;; -- push 34 --
    push 34
   ;; -- push 35 --
    push 35
   ;; -- plus --
    pop rax
    pop rbx
    add rax, rbx
    push rax
   ;; -- push 69 --
    push 69
    ;; equal -- 
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    ;;  -- if --
    pop rax
    test rax, rax
    jz addr_29
   ;; -- push 1 --
    push 1
    ;;  -- if --
    pop rax
    test rax, rax
    jz addr_23
   ;; -- push 34 --
    push 34
    ;; -- dump --
    pop rdi
    call dump
    ;; -- else --
    jmp addr_25
addr_23:
   ;; -- push 35 --
    push 35
    ;; -- dump --
    pop rdi
    call dump
addr_25:
   ;; -- push 420 --
    push 420
    ;; -- dump --
    pop rdi
    call dump
    ;; -- else --
    jmp addr_31
addr_29:
   ;; -- push 666 --
    push 666
    ;; -- dump --
    pop rdi
    call dump
addr_31:
    mov rax, 60
    mov rdi, 0
    syscall
