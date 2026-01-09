section .data
    mrow db 0x4d, 0x65, 0x6F, 0x77, 0x20
    len equ $ - mrow
    
section .text
    global _start
    
_start:
    mov rbx, 0
    jmp .loop

.loop:
    inc rbx
    
    cmp rbx, 37
    je .end

    mov rax, 1
    mov rdi, 1
    mov rsi, mrow
    mov rdx, len
    syscall
    
    jmp .loop

.end:
    mov rax, 60
    mov rdi, 0
    syscall
