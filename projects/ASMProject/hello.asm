%include "asm_io.inc"
segment .data
hi db "Hello World", 10, 0
segment .bss

segment .text
	global asm_main
asm_main:
	enter 0,0          ; setup routine
	pusha
	;-----------------------------Code Starts Here----------------
	mov eax, hi
	call print_string
	;---------------------Code Ends Here-----------------------
	popa
	mov	eax, 0             ;return back to c
	leave
	ret
