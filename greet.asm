extern printf
extern scanf

section .data
	message: db "hi %s",10,0
	in: db "%s",0
	
section .text
	global main

	main:
	push ebp
	mov ebp,esp

	push dword[ebp-0x4]
	push in
	call scanf
	
	push dword[ebp-0x4]
	push message
	call printf
	
	leave
	ret
