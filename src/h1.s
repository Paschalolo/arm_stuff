
// Assembler program to print "JOy to the world" 

.data 
	joy : .ascii "Joy to the world\n"

.text 
.global _start 

_start : 
	mov x8 , #64 
	mov x0, 1 // set register to stdout 
	ldr x1 , =joy // load address to register 
	mov x2 , #15 // size of strign 

	svc 0 

	// terminate the function 
	mov x8 , 0x5d // set syscall to exit 
	mov x0 , #0 
	svc 0 
