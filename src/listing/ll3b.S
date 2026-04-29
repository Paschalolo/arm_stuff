
.text
	.global _start 


.balign 4 
_start : 
	nop 
	nop 
	ldr x0 , =boy 
	blr x0 

	// terminate function 
	mov x8 , #0x5d
	svc #0 
boy :
	mov x0, #1 
	ret 

