// Name : Paschal AHanmisis 

// Optimizing 3x3 matix 

// Registers : 
// DO -first collum 
.data 
	A : 
.text 
.global main

main : 
	stp x19 , x20 , [SP, #16]!
	str lr , [SP, #-16]!
	ldr x0 , =A
	ldp d0, d1 , [x0] , #16 
	ldr d2 , [x0]
	// load matrix B into neon registers 
	ldr x0 , =B 
	ldp d3 , d4 , [x0] , #16 
	ldr d5 , [x0]
	mul v6.4h , v0.4h , v3.4h[0]
	mul v6.4h , v0.4h , v3.4h[1]
	mul v6.4h , v0.4h , v3.4h[2]
	mul v7.4h , v1.4h , v4.4h[0]
	mul v7.4h , v2.4h , v4.4h[1]
	mul v7.4h , v3.4h , v4.4h[2]
	mul v8.4h , v1.4h , v5.4h[0]
	mul v8.4h , v2.4h , v5.4h[1]
	mul v8.4h , v3.4h , v5.4h[2]
	ldr x1 , =C 
	stp d6 , d7 , [x1], #16 
	str d8 , [x1]
	ldp x19 , x20 , [SP] , #16 
	ret 
