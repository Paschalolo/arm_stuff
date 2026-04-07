// Author : Paschal Ahanmisi

// Executable : converting numbers to ascii strings
// printing a register in hex to stdout 

// x0-x2 parameters to linux fuctnion 
// x1 - also byte we are wrtintg 
// x4 register to print 
// w5 -> count loop 
// w6 - current character 
// x8 - linux function number 

.data 
	hexstr : .ascii "0x123456789ABCDEFG\n"
.text
.global _start 
_start: 
	mov x4 , 0X6E3A
	movk x4, #0X4F5D , lsl #16
	movk x4, #0XFEDC , lsl #32
	movk x4, #0X1234 , lsl #48

	ldr x1 , =hexstr // start of the stirng 
	add x1, x1 , #17 // start at least the sig digit 

	// the loop is for w5 = 16 to 1 step 1 
	mov w5 , #16 

loop : 
	and w6 , w4 , 0xff
	// if w6 >= 10 gotot letter 
	cmp w6 , #10 
	b.ge letter 
	
	add w6 , w6 , #0x30
	b cont 

letter :
	add w6 , w6 , #('A' - 0)

cont : 
	strh w6 , [x1] // hextsr = str[i]
	sub x1 , x1 , #2 
	lsr x4 , x4 , #8 
	subs w5, w5 , #2 // step th ecounter down by 1 
	b.ne loop  // jump to loop if not full 

	// making sytem call 
	mov x0 , #1 
	ldr x1 , =hexstr 
	mov x2 , #19 // length of string 
	mov x8 , #64
	svc #0

	// temrination of the futcntion 

	mov x0 , #0 
	mov x8 , #93
	svc #0



