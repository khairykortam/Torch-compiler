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
    leave
    ret

_start:
addr_0:
    push 10
addr_1:
    push 20
addr_2:
    pop rax
    pop rbx
    add rbx, rax
    push rbx
addr_3:
    pop rdi
    call dump
addr_4:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
mem: resb 640000
