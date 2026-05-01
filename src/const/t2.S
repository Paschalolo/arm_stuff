

.data 
	ttlStr : .asciz "Listing 4 - 2 "
	// Demonstartig call to malloc and free 

	// length prefixed string 
	// array 
	wordArray : .byte 16 *(4)
.text 
.global _start 
.extern malloc 
.extern free 
.extern printf 

_start : 
	stp x29 , x30 ,[SP , #-16]!
	mov x0 , #256 
	bl malloc
	adrp x2 , byteptr
	add x2 , x2 , :lo12:byteptr
	ldr x2 , [x2]
	ldr x2 , [x0] 

	
	bl free
	ldrb x4 , [x2]
	ltp x29 , x30 , [SP] , #16 
