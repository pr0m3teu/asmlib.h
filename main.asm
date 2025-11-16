
section .note.GNU-stack noalloc noexec nowrite progbits

section .text   
global putchar_asm
global exit_call
global AtoU

%macro is_num 2

    cmp %1, '9'
    ja %2

    cmp %1, '0'
    jb %2

%endmacro

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

AtoU:
    xor rax, rax
    xor r9, r9 ;; temp char
    xor r8, r8 ;; errno
    mov r10, 10 ;; mul 10
   
    test rdi, rdi
    jz error

    while:
        mov r9b, byte [rdi]
        test r9, r9
        jz endw
        is_num r9, error
        
        mul r10
        sub r9, '0'
        add rax, r9

        add rdi, 1
        jmp while
    endw:
        jmp end_test

    error:
        mov r8, -1

    end_test:
        test r8, r8
        jz return
        
        mov rax, r8
        ret

    return:
        mov dword [rsi], eax
        mov rax, 0
    
    ret
    
    
