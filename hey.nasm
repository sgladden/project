;hey.asm
;Author: Shane Gladden

global _start

section .text
    _start:

	jmp short call_shellcode

shellcode:
	pop ecx

	xor eax, eax 
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
	pop ecx
        mov al, 0x4
        add ebx, 0x1
	mov edx, ebx
        add edx, 12
        int 0x80

	xor eax, eax
	xor ebx, ebx
	mov eax, 0x1
	mov ebx, 0x5
        int 0x80

call_shellcode:
	call shellcode
	db "Shane Gladden"

 
