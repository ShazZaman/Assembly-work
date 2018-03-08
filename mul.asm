extern printf
extern scanf

section .data
	line: db "enter two numbers two multiply",10,0
	in: dd "%d",0
	
	a: dd 0
	b: dd 0
	
section .text
	global main
	
	main:
	push ebp
	mov ebp,esp

	push a
	push in
	call scanf

	push b
	push in
	call scanf

	mov eax,[a]
	mov ebx,[b]

	mul ebx

	push eax
	push in
	call printf

	leave
	ret

	

	


