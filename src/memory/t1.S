// Author : Paschal Ahanmisi 

.data
	db : .byte 0
	     .byte 0,1, 2
	.balign 4 
	u : 
		.word 1
		.word 5, 6, 7 
	c : 
		.byte 0 
		.byte 0x30 , 0x31 , 0x33 , 0x33 ,0x34 ,0x34
.section .rodata , ""
.balign 4
pi : .float 3.12345674
.balign 2
maxu16 : .hword 65537
maxI16 : .hword 3453
.text
	.global _start 

_start : 

