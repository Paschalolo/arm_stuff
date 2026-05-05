

// static int a , b , x 
// if(a < b )
// x= 1 ;
// else {
// 	x= 0 ; 
// } 

.text 
	.global func 

func : 
	adrp x4 , a
	add x4 , x4 , :lo12:a
	adrp x5 , b 
	add x5 , x5 , :lo12:b

	// load to reguster s 
	ldr x0 , [x4] // contains a 
	ldr x1 , [x5] // constians b 

	cmp x0 , x1 
	b.ge gg
	mov x0 , #1 
	b fin
gg: 
	and x0 , xzr , x0 
fin : 
	adrp x4, x 
	add x4 , x4 , :lo12:x
	str x0 , [x4] 
	ret 

// much more efficent using conditional moves 

func2 : 
	adr x4 , a 
	adr x5 , b 
	ldr x0 , [x4]
	ldr x1 , [x5]
	adr x6 , x
	cmp x0 , x1 
	cset x0 , lt
	str x0 , [x6]
	ret 


