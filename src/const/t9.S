

.text 
	.global func
	.extern printf 
.balign 4 
func : 
	stp x29 , x30 , [SP, #-32]!
	stp x19 , x20 , [SP, #16]

	....
	ldp x19 , x20 , [SP , #16]
	ldp x29, x30 , [SP] , #32

	// post test loop 
	str x19 , [SP, #-16]!
	adrp x0 , hi
	add x0 , x0  , :lo12:hi
	mov x19 , x0 
	mov x4 , #10 
	eor x5 , x5, x5
loop: 
	bl printf 
	mov x0 , x19 
	add x5 , x5 , #0x01 
	cmp x5 , x0 
	b.hi loop 

end :
	ldr x19 , [SP] , #16 
	ret 

// shifting 128bit value 

