
// Author : Pascahl Ahanmsisi

// Executable : Load stroe architecture 

.data 
.balign 4 
snu: .word 0x12345578

.text 
.global _start 
_start : 
	mov x4 , #0 
	ldr  x1 , =snu // load address of snu here 
	ldrb w0 , [x1 ], #1 
	ldrb w0 , [x1] , #1 
	ldrb w0 , [x1 ] , #1 
	ldrb w0 , [x1] , #1 

	// syscall to end 

	mov x8 , #93 
	mov x0 , #0 
	svc #0
