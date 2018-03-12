extern printf
extern scanf

section .data

	in: dd "%d",10,0 
	a: dd 0
	b: dd 1
	n: dd 0
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

	cmp dword[ebp-0x4],1
	je l1

	cmp dword[ebp-0x4],2
	je l2

	mov dword[ebp-0x10],0
	mov dword[ebp-0x14],1
	
	l3:
	mov edx,dword[ebp-0x14]
	add edx,dword[ebp-0x10]
	mov dword[ebp-0x14],edx

	push dword[ebp-0x14]
	push in 
	call printf

	mov edx,dword[ebp-0x14]
	sub edx,dword[ebp-0x10]
	mov dword[ebp-0x10],edx
	
	dec dword[ebp-0x4]
	cmp dword[ebp-0x4],2
	jne l3		

	l2:
	push dword[b]
	push in
	call printf

	l1:
	push dword[a]
	push in
	call printf
	
	leave 
	ret
