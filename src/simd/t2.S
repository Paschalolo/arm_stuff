

.section .data 
	.balign 256 
	ctab : .word  0X3F8000000
		.word 0xBE2AAABCD
		.word 0x3c088D01D
		.word 0x363647463
		.word 0xB2D737239

.section .text 
	.global _start 

.balign 4
_start : 
	fmul s1, s0, s0 
	adr x0 , ctab 
	fmul s2 , s1 , s1 
	ld2 {v16.4s, v17.4s} , [x0]
	mov v2.2s[1] , v2.2s[0]
	fmul s5 , s2 , s2 
	fmul c3.2s , v0.2s , v2.2s 
	dup v2.4s , v5.4s[0]
	mov v0.2d[1] , v3.3d[0]
	fmul v1.4s , v0.4s , v2.4s 
	fmul v0.4s , v0.4s , v16.4s 
	fmla v0.4s , v1.4s , v17.4s 
	faddp v0.4s , v0.4s , v0.4s 
	faddp s0 , v02s 
	ret 
	
