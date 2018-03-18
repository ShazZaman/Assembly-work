extern scanf
extern printf

section .data
	ins: db "%s",0
	in: dd "%d",0
	yes: db "yes",0
	no: db "no",0
	n: dd 0

section .text
	global main
	
	main:
	push ebp
	mov ebp,esp

	push n
	push in
	call scanf 
	
	mov eax,dword[n]

	push eax
	push in
	call printf

	mov eax,dword[n]
	mov ebx,0

	l1:
	inc ebx
	mov edi,10
	div edi
	cmp eax,0
	jne l1

	mov ecx,0
	mov eax,dword[n]

	l2:
	mov edi,10
	div edi
	mov esi,eax
	mov eax,edx
	call power
	add ecx,eax
	mov eax,esi
	cmp eax,0
	jne l2

	mov eax,esi

	s3:
	cmp dword[n],eax
	je s5

	s4:
	push no
	push ins
	call printf
	jmp exit

	s5:
	push yes
	push ins
	call printf
	jmp exit
	
	power:
	mul eax
	dec ebx
	cmp ebx,1
	jne power
	
	exit:
	leave
	ret	

