
.data 
	.global _start 


_start : 
	ldr s5 , [x0]
	str s0 , [x0],#8 
	str d4 , [x1, #4]!
