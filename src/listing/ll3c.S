
// Auhtor : Paschal 

.data
	.balign 4
	str : .ascii "Hello World"
	.byte 0 

.text
	.global _start 
	.extern printf
	.extern exit 
	.extern fflush 

_start : 
	adr x0 , str 
	stp x29 , x30 ,  [SP, #16]!
	bl printf 
	ldp x29 , x30 ,[SP] , #16
	
	bl fflush
	bl exit 

