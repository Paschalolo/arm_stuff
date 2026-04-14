
; Name : Paschal Ahanmisi
; stack framwes

.data 
.text 
.global _start 
_start : 
	sub sp , sp , #16
	str w1,[sp] ; store a 
	str w2 , [sp, #4] ; stroe b 
	str w3 , [sp , #8] ; store c 
	add sp ,sp , #16 
