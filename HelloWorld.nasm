;HelloWorld.asm
;Author: Kul Subedi

global _start

section .text
    _start:
        ; print HelloWorld! in screen
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, message
        ;mov edx, 12
        mov edx, mlen
        int 0x80

        ; exit program gracefully
        mov eax, 0x1
        mov ebx, 0x5
        int 0x80

section .data
    message: db "Welcome to Assembly!"
    mlen equ $-message

 
