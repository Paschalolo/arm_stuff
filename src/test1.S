/*  Hello world in assembly 

; Author : Pascahl Ahanmisi 
; Purpose teesting script on mac
*/
.data 
	helloworld : .ascii "Hello world\n My name is Paschal\n"

.text
.global _start 

_start: 
    // sys_write(stdout, string, len)
    mov x0, #1 
    ldr x1, =helloworld 
    mov x2, #32          // Length is 32 bytes including \n
    mov x8, #64          // 0x40 is sys_write
    svc 0 

    // sys_exit(status)
    mov x0, #0           // Return 0 (success)
    mov x8, #93          // 0x5d is sys_exit
    svc 0

