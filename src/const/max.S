
.data 
	.balign 4 
	gbl_stf : .asciz "%d"
.text 
	.global max
	.global read_and_add
	.extern scanf 
// a -> w0 , b-> w1 
max : 
	cmp w0, w1 
	csel w0 , w0  , w1  , hi 
	ret 
.balign 4 
read_and_add: 
	stp x29 , x30 , [SP, #-32]!
	adr x0 , gbl_stf
	add x1 , sp , #16 
	bl scanf 
	adr x0 , gbl_stf
	add x1 , sp , #20
	bl scanf 
	ldp w0 , w1 , [SP ,#16]
	add w0 , w0 , w1 
	ldp x29 , x30 , [SP] , #32 
	ret
