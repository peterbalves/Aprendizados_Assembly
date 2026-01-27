section .data
numbers: db "0123456789"

section .text

global _start
_start:
xor esi,esi ; zerando esi 
call loop
loop: 
    mov eax, 4 
    mov ebx, 1
    lea ecx, [numbers + esi]
    mov edx, 1
    int 0x80


    inc esi 
    cmp esi, 0xA 
    jle loop

exit:
    mov eax,1 
    mov ebx, 0 
    int 0x80
