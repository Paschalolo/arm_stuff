 
 // Author : Paschal Ahanmisi 

// below is the code segement 
 .text 
	.global _start 

.balign 4 
_start :
	
	// terminating function
	mov x8 , #0x5d 
	eor x0, x0, x0 
	svc #0 
