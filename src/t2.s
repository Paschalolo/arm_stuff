
.text
.global _start 


_start  : 
	mov w0 , #34 
	mov w3 #
	bl myFunc 
	add w0 , w0 , #4 

	mov x0 , #0
	mov x8 , #0x5d
	svc #0

myFunc :

	str w3 , [SP , #-16]! ; push w3 
	bl myfunc2
	// do some work
	ldr w3,[SP] , #16 ; pop w3 
	ret 

myfunc2:
