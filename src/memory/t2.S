// Author : Pascahl Ahanmisi 


.data 
	saveLR : .dword 0 
	outputVal : .dword 0 

	ttlStr : .asciz "Listing 3-1 "

.text 
	.extern printf 
	.global _start 

_start : 	

	// terminate 
	mov x8 , #0x5d 
	mov x0 , #0x0
	svc #0 

	.global getStr 
getStr : 
	adrp x0 , ttlStr 
	add x0 , x0 , :lo12ttlStr: 
	ret // sucesffuly returned the addresss 

	.global asmMain 

asmMain : 
	
	sub sp , sp , #256 
	ldr x0 , =saveLr 
	str lr , [x0]
	ldr x2 , =outputVal 
	str w1 , [x2] 
	bl printf 

	ldr x0 , =fmtStr1 
	str x1 , #12
	bl printf 

	ldr x0 , =saveLR
	ldr lr , [x0]
	add sp , sp , #256 
	ret 
