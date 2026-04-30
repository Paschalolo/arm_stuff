// Author : Paschal Ahanmisi 

.data
	db : .byte 0
	     .byte 0,1, 2 
	u : 
		.word 1
		.word 5, 6, 7 
	c : 
		.byte 0 
		.byte 0x30 , 0x31 , 0x33 , 0x33 ,0x34 ,0x34
.text
	.global _start 

_start : 

