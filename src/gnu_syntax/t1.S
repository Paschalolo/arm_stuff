
.section .data
	.balign 4 
	mesg : .asciz "hello world \n " 
.text 
.global _start 
.extern printf 

_start : 
	stp x29 , x30 , [SP , #-16]! // maek stack aligned at 16 byte boudnary
	adrp x0 , mesg 
	add x0 , x0 , :lo12:mesg 
	bl printf
	ldp x29 , x30 , [SP] , #16 // add back to the stack 
	// terminate function 
	mov x0 , #0 
	mov x8 , #0x5d 
	svc #0 
