
section .note.GNU-stack noalloc noexec nowrite progbits

segment .text   
global putchar_asm
global exit_call

exit_call:
    mov rax, 60
    mov rdi, 0
    syscall
    ret

putchar_asm:
    mov rsi, rdi
    mov rax, 0x1
    mov rdi, 0
    mov rdx, 1
    syscall

    ret
