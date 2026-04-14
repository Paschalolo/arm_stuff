; Testing macros 
.text 
.global  _start 
.macros PUSH1 register 
	str \register , [SP, #-16]!
.endm

.macros POP1 register 
	ldr \register , [SP] , #16
.endm

; prologue 
	stp x4 , x5 , [SP,#-16]!
	stp w20  ,x23 ,[SP , #-16 ] !
	str w27 , [SP, #-16]! ; 


;epilogue 
	ldr w27 , [SP] , #16 
	ldp w20 , x23 , [SP] , #16 
	ldp x4, x5 , [SP, #-16]

