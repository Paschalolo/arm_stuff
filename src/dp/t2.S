

.section .data
	.balign 4 
	fmt : .asciz "the sum is %d\n" 
	.balign 4
	x : .word 5 
	y : .word 8


.text 
.global _start 
.extern printf 
_start : 
	stp x29 , x30 ,[SP, #-16]!
	adr x14 , x
	
	ldp w4 , w5 , [x14]
	add w4 , w4 , w5 
	adr x0 , fmt 
	mov w1 , w4
	bl printf 
	ldp x29 , x30 ,[SP] , #16

	// termination 

	mov x8 , #0x5d 
	eor x0 ,x0 ,x0
	svc #0
