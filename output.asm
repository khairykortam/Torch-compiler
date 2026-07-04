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
    ;; -- drop --
    pop rax
addr_1:
addr_2:
    pop rax
    push rax
    push rax
addr_3:
    push 0
addr_4:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rbx, rax
    cmovg rcx, rdx
    push rcx
addr_5:
    pop rax
    test rax, rax
    jz addr_17
addr_6:
    pop rax
    push rax
    push rax
addr_7:
    ;; -- swap --
    pop rax
    pop rbx
    push rbx
    push rax
addr_8:
    push 1
addr_9:
    push 1
addr_10:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
addr_11:
    ;; -- drop --
    pop rax
addr_12:
    push 1
addr_13:
    push 1
addr_14:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
addr_15:
    ;; -- drop --
    pop rax
addr_16:
    jmp addr_1
addr_17:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
segment .bss
mem: resb 640000
