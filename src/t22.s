// Examples of the mov instruction 

.text 
.global _start 

_start : 
	mov x2 , #0x6E3A
	movk x2 , #4F5D , lsl #16
	movk x2 , #0xFEDC , lsl #32
	movk x2 , #0x1234, lsl #48
	
	mov w1 , w2  // move lower 32 bits
	mov x1 , x2 , lsl #1 
	mov x1 , x2 ,  lsr #1 
	mov x1 , x2 , asr #1 

	mov x1 , #0x18
	 

	// additon 
	add x2 , x1 , #4000

