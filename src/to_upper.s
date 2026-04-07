// Author : Paschal Ahanmisi 
// COnvert to upper strign 

.data 
	.balign 32
	// string bellow 
	db_str : .ascii "happy birthday"

.text 
.global _start 

_start :
	mov x6 , #14
	// load byte address 
	ldr x0 , =db_str // loading the address to x0
_loop:
	ldrb w1 , [x0] , #1 
	eor w1 , w1 , #0X20

	strb w1 , [x0 , #-1] // storing the answer in adddress 
	subs x6, x6 , #1 
	b.ne _loop
_fin : 
	// printing out in screen 
	mov x8 , #64
	mov x0 , #1
	ldr x1 , =db_str 
	mov x2 , #15 
	svc #0 

	// sycall to exit 
	mov x8 , #0x5d
	mov x0, #0 
	svc #0 
