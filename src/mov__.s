// mov tetsing 

.text
.global  _start 
_start: 
	mov x1 , 0x1234
	movk x1, 0xFABC, lsl #16
	movk x1 , 0x9876, lsl #32
	movk x1 , 0xABCD ,lsl #48
	uxtb w0 , w1 
	mov x8 , 0x5d
	mov x0, #0 
	svc #0


