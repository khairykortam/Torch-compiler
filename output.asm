extern dump
global _start
segment .text
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
    pop rax
    mov rdi, rax
    call dump
   ;; -- push 500 --
    push 500
   ;; -- push 80 --
    push 80
   ;; -- minus --
   pop rax
   pop rbx
    sub rax, rbx
    push rax
   ;; -- push 420 --
    push 420
    ;; -- dump --
    pop rax
    mov rdi, rax
    call dump
    mov rax, 60
    mov rdi, 0
    syscall
