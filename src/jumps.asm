default rel
section .data:
    message: db "Digite o numero 0 ou 1: "
    zero_number: db '0'
    one_number: db '1'
section .bss
    number: resb 1

section .text
    global _main

    _main:
        
        ; Pergunta
        mov rax,1
        mov rdi,1
        mov rsi, message
        mov rdx, 24
        syscall

        ; Input
        mov rax,0 ; syscall read
        mov rdi, 0 ; stdin
        mov rsi,number ; buffer
        mov rdx, 1 ; tamanho do buffer
        syscall
        
        mov al, [number]
        cmp al, '0'
        je zero

        cmp al, '1'
        je one 
        
        jmp exit

        zero:
            mov rax, 1 ; syscall write
            mov rdi, 1 ; stdout
            mov rsi, zero_number ; buffer
            mov rdx, 1 ; tamanho do buffer 
            syscall  

        ; Output
        one:
            mov rax, 1 ; syscall write
            mov rdi, 1 ; stdout
            mov rsi, one_number ; buffer
            mov rdx, 1 ; tamanho do buffer 
            syscall 

        ; exit
        exit:
            mov rax, 60
            mov rdi, 0
            syscall
