
// Author : Paschal Ahanmisi 
// Executable 


.data

	.global _start 

_start : 
	

	// terminating of function 
	eor x0, x0 , x0 
	mov x8, #0x5d 
	svc #0 
	// finshed the program 
