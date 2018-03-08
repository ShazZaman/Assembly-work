extern printf
extern scanf

section .data
	message: db "value=%d",10,0
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

	mov eax, [a]
	mov ebx, [b]
	
	add eax,ebx
	
	push eax
	push message
	call printf

	leave
	ret
