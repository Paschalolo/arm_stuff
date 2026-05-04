

.text 
	.global _start

_start : 
	
	b _start 

	// termination 
	and x0 , x0 , xzr 
	mov x8 , #0x5d 
	svc #0

	// sub stuff 

