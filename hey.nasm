;hey.asm
;Author: Shane Gladden

global _start

section .text
    _start:

	jmp short call_shellcode

shellcode:
	pop ecx

	xor eax, eax 
        mov al, 0x4
        add ebx, 0x1
	mov edx, ebx
        add edx, 12
        int 0x80

	xor eax, eax
        add eax, 0x1
	xor ebx, ebx
        int 0x80

call_shellcode:
	call shellcode
	message: db "Shane Gladden"

 
