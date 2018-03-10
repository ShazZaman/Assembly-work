extern printf
extern scanf

section .data
	message: db "sum: %d",10,0
	in: dd "%d",0

	n: dd 0
	sum:dd 0
section .text
	global main
	
	main:
	push ebp
	mov ebp,esp
	
	push n
	push in
	call scanf

	mov edx,dword[n]
	mov dword[ebp-0x4],edx
	mov dword[ebp-0x8],0
	mov ebx,1
	
	l1:
	add dword[ebp-0x8],ebx
	inc ebx
	cmp ebx,dword[ebp-0x4]
	jle l1

	push dword[ebp-0x8]
	push message
	call printf
 
	leave
	ret
