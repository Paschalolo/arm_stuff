

// -------------stack locations ---------------
.equ stack_top , 0x20000000 // rasberry pi 
.equ EL3_stack_top, stack_top
.equ EL2_stack_top , stack_top - 0x2000
.equ EL1_stack_top , stack_top -0x4000
.equ EL0_stack_top , stack_top - 0x6000

// ---------------------------------------------------
// The startup code be loader by the bootl;oader 
// the entry point is _tsart which perfroms initilization of the hardware then 
// calls a C function 
.section .text.boot 
	.global _start 
	.func _start 
	.extern main 
_start :  // On reset , we should in EL3
// for our example we only run the process on a single cpu 
// cpu core so we cause the others to go to sleep 
// waiting for an execption to coccur if an execption occurs i tgoes back to sleep 
	
	mrs x0, mpidr_el1_el1 // get the cpu ID 
	and x0 , x0 , #3 // mask off upper bits 
	cmp x0, #0
	beq sleep 
	
sleep : 
	wfi // put cpu in a low power state abd remain there until a wakeup event occurs 
	b sleep 

nosleep: 
	ldr x1 , =__bss_start__
	ldr x2 , =__bss_end__
	mov x3, #0 
bssloop : 
	cmp x1 , x2
	bge bssdone 
	str x3, [x1], #8 
	b bssloop
bssdone : 
	mrs x0 , currentel 
	lsr x0,x0,#2
	cmp x0 , #3 
	blt el2_entry 

	// intiitlaize EL# stack pointer 
	ldr x1 , =EL_stack_top 
	mov sp , x1 

	//set up vector table for el3 
	ldr x1 , =Vector_table_el1 
	mov sp , x1 

el2entry : 
	mrs x0 , currentel 
	lsr x0, x0 , #2
	cmp x0 , #2 
	blt el1_entry 

	ldr x1, =EL2_stack_top 
	mov sp , x1 
	ldr x1, =Vector_table_el1 
	msr VBAR_EL1 , x1 
	msr SCLTR_EL1 ,xzr 

	mrs x0 , HCR_EL2
	orr x0 , x0 , #(1 << 31)
	msr HCR_EL2 , x0
	mov x0, #0b00101
	msr SPSR_EL2 , x0

	mov x0 , #0 
	msr SPSR_EL1 , x0 
	adr x0 , elt_entry 
	eret 
elt0_entry : 
	bl main 
hang : b hang 
.size _start , . - _start 
	// setu
	//...
	//finsh later 
