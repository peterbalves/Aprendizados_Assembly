section .data
    message0: db "Ola "
    message1: db " Bem Vindo!",0xa

section .bss
    name: resb 100

section .text
    global _main
    
    _main:

        ; Recebe dados
        mov rax, 0 ; numero da syscall read (0)
        mov rdi, 0 ; stdin
        mov rsi, name ; destino
        mov rdx, 100 ; tamanho
        syscall
        
        mov r12, rax ; rax retorna o numero de bytes do input e passamos isso para r12
        dec r12 ; em rax retorna todos os bytes inclusive o \n, como vamos decrementar tiramos o byte \n
        ; Output ola 
        mov rax, 1 
        mov rdi, 1 
        mov rsi, message0 
        mov rdx, 4
        syscall 

        ; Output name
        mov rax, 1 ; numero syscall write
        mov rdi, 1 ; stdout
        mov rsi, name ; recebe o buffer
        mov rdx, r12 ; tamanho do buffer 
        syscall ; chamada de sistema

        ; Output Bem vindo 

        mov rax, 1 
        mov rdi, 1 
        mov rsi, message1 
        mov rdx, 12
        syscall

        ; exit
        mov rax, 60
        mov rdi, 0 
        syscall

