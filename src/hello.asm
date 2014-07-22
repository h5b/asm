; 32-Bit Linux Hello world example with NASM

SECTION .data
	; define msg string plus <CR>
	msg:	db "The Charme of Flickering Lights",10
	len:	equ $-msg		; define length of msg string

SECTION .text
        global _start			; entry point for the Linker

_start:
	mov	ecx,msg			; load msg into reg ecx
	mov	edx,len			; load length into reg edx
	mov	ebx,1			; set file handle to stdout: 1
	mov	eax,4			; set syscall sys_write: 4
	int	0x80			; call kernel
	
	mov	eax,1			; set syscall sys_exit: 1
	xor	ebx,ebx			; exit (0)
	int	0x80			; call kernel
