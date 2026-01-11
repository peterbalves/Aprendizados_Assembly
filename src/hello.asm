section .data
    hello: db "Hello World!", 0xa,0xd

section .text
    global _main

    _main:
        mov eax, 4
        mov ebx, 1
        mov ecx, hello
        mov edx, 13
        int 0x80

        mov eax,1
        mov ebx, 0
        int 0x80
