
.text 
.global _start 

_start : 
	// 128 bits meaning anser will be in 2 64 bi register or a 192 bit register 

	// high bits  a = x1 , low bits a x0
	// high bits b = x3 , low bits b x2
	adds x4 , x0 , x2 
	adcs x5 , x3, x1
	cset x6 , cs	
