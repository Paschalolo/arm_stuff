
.equ PERI_BASE,  0x3F000000 // start of all devices 

// base physical Addressof the GPIO registers 
.equ GPIO_BASE ,(PERI_BASE + 0x200000)

// base physical address of PWM registers 
.equ PWM_BASE , (PERI_BASE + 0x20C00)

// base physical address of UART device 0 devices 
.equ UART_BASE , (PERI_BASE + 0x201000)

.equ CLK_BASE , (PERI_BASE + 0x101000)

.equ MAP_FAILED , -1 
.equ MAP_SHARED , 1
.equ PROT_READ , 1 
.equ PROT_WRITE , 2 

// some constants from /usr.include/fctnl.h 
.equ O_RDONLY , 0x00 
.equ O_WRONLY , 0x01

.equ BLOCK_size , (4096*4)

.section .data 
	.global 
