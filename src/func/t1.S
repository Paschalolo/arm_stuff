
// Author : Paschal Ahanmisi 
// Executable 


.data
.balign 4 
	.global _start 

_start : 
	

	// terminating of function 
	eor x0, x0 , x0 
	mov x8, #0x5d 
	svc #0 
	// finshed the program

	// sub function test 

zeroBytes : 
	mov x1 , #256  
repeatlp : 
	subs x1 , x1 , #1 
	str wzr , [x0, x1 ,lsl , #2]
	b.ne repeatlp

	// passing params on the stack 
	sub sp , sp , #16 
	str w0 , [SP] , #4
	str w1 , [SP], #8 
	str w2 , [SP]
	bl CallProc 
	add sp , sp , #16 // clear the stack 
