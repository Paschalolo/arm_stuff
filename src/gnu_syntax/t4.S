
.section .rodata 
	format : .asciz "You entered an odd char : %s \n"

.text 
	.global _start 

_start : 
	stp x29 , x30 [SP, #-16]! 

loop : 
	bl getChar 
	tbz x0, #0 loop

	// printf 
	mov x1 , x0 
	ldr x0 , =format 
	bl printf
	// return 0 
	mov w0 , #0 
	ldp x29 , x30 , [SP] , #16 
	ret 
