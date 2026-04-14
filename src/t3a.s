// NAme : Pascahl Ahanmisi 

// Assembler progrsm to convert to upper case 

.data 
	outstr : .asciz "This is our Test our Test string thst we will convert\n"

.text 
.global _start 

_start :
	ldr x0 , =outstr
	bl toupper 
	mov x2, #1 
	ldr x1 , =outstr
	mov x8 , #64 
	svc #0 

	// setup paramenters to exit the program 

	mov x0 , #0 
	mov x8 , #93
	svc #0 

toupper : 
	mov x4 , x1 
	ldrb w5 , [x0] , #1 
	cmp w5 , #'z'
	b.gt cont 
	cmp w5 , #'a'
	b.lt cont 
	eor w5 , w5 , #0x20 
	strb w5 , [x0 ,#-1]


cont : 

	ret 


	
