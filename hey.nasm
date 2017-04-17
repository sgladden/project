;hey.asm
;Author: Shane Gladden

global _start

section .text
    _start:

	jmp short call_shellcode

shellcode:

	xor eax, eax 
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
        mov al, 0x4
        mov bl, 0x1
	pop ecx
        mov dl, 14
        int 0x80

	xor eax, eax
	mov al, 0x1
	xor ebx, ebx
	int 0x80

call_shellcode:
	call shellcode
	db "Shane Gladden"

 
