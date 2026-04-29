

.data 
	byte_str : .byte 0

.balign 2
	half_word_gg : .hword 10000
.balign 4 
	word : .word 90000
.text
	.global _start 

_start :
	mov x8 , #0x5d 
	mov x0 ,xzr 
	svc #0 
	
