
.text 
.global _start 

_start : 
	
	// shift and rotate 
	add x2 , x0 , x1 // does not set PSTATE and addd s
	subs x3 , x3 , x1 // substract and set PSAT CF , VF , SF , ZF 
	neg x5 , x5 , lsl , #4 // x4 -= (x5 << 4)

	// mov 
	mov x0 , x1 
	mov sp , x3 
	mov x0 , #0xffff
	movz x4 , #0xfedc , lsl , #48 
	movk x0 , #0x1234 , lsl , #48 
	movk x0 , #0x5678 , lsl , #32
	movk x0	, #0xabcd , lsl , #16 
	movk x0 , #0xffff

	// unconditoonal lo
	
	mov w0 , #0 
loop : 
	cmp w0 , #10 
	b.ge endloop
	add w0 , w0 , #1 
	b loop 
endloop : 
	ret 

// csel similar to cmov on x86 
	test x4, #0 
	csel x4 , x0 , x1 , eq

	// special instructions 

