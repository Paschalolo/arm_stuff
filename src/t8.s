
// Name : Paschal Ahanmisi 
// Example function to calculate the distance between two points in single precison floating point 

.text
.global distance 
// d = sqrt (<y2-y1>^2 + <x2-x1>^2)
distance :
	str lr , [SP, #-16]!
	ldp s0 , s1 , [x0] , #8
	ldp s2 , s3 , [x0] 
	fsub s4, s2 , s0 
	fsub s5 , s3, s1 
	fmul s4 , s4 , s4
	fmul s5 , s5 , s5
	fadd s5, s4 , s5 
	fsqrt s5 , s5
	fmov s0 , s5 // mov to return function
	ldr lr, [SP], #16
	ret 
