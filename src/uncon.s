

.text 
.global _start 


_start :
// uncinditional loop 
	mov x1 , #0x01
	mov x0, #2
	b house 

house :
	mov x1, #0x1235 
	sub x0, x0, #1
	cmp x0 , 0
	b.ne house 

	mov x8 , #0x5d
	mov x0,0 
	svc 0


