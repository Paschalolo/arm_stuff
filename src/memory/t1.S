// Author : Paschal Ahanmisi 

.data
	db : .byte 0
	     .byte 0,1, 2
	.balign 4 
	u : 
		.word 1
		.word 5, 6, 7 
	c : 
		.byte 0 
		.byte 0x30 , 0x31 , 0x33 , 0x33 ,0x34 ,0x34
.section .rodata , ""
.balign 4
pi : .float 3.12345674
.balign 2
maxu16 : .hword 65537
maxI16 : .hword 3453
.text
	.global _start 

_start :
	adrp x0 , db 
	add x0, x0 , :lo12db: // get the address of db 
	mov x2 , #4 
loop: 
	ldrb w1 , [x0, #1]! // preindexed mode 
	subs x2 , x2 , #1 
	b.ne loop

	ldrb w1 , [x0] , #1 // post index mode increments after x0 is accessed 
	subs x2 , x2 , #1 
	b.ne loop


	// terminate function
	mov x8 , #0x5d 
	eor x0, x0 ,x0
	svc #0 
