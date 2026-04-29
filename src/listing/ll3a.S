
.data 
	d1 : .byte 1
	.balign 4 
	d2 : .word 34 , 35, 365, 37
.text
	.global _start

.balign 4 
_start : 
	ldr  x0 , =d1 // load address to x0 
	ldr  x1 , =d2
	ldrb w0 , [x0] // load byte to w0
	ldp w2 , w3 , [x1], #8 // loaded stuff in w2 and w3 and incremnted by 8 bytes 
	ldp w4 , w5 , [x1] //  loaded 
	nop 
	nop 
	nop 

	// terminate function 
	mov x8 , #0x5d
	eor x0 , x0 , x0  
	svc #0

