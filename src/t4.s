// Author : Pascahl Ahanmisi 

// Testing overflow bits 

.data 
.global _start

_start : 

loop : 
	add w2 , w1 , #1 //  i + 1 
	cmp w2 , #10 
	b.le loop // if (i <= 10)

loop1 : 
	subs w2 , w2 , #1 
	b.ne loop1

loop2: 
	cmp w4 , #5 
	b.ge loop2 

	// unconditional loop 
	b loop

	eor x1, x1, x1 // clear register with xor

_stp1 : 
	mov w5 , #0xFFFF 
	and w6,w6 , w5, lsl ,  #16 
