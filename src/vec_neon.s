// Examples functino to calculate the distance 
// betweene 4d two points in single precison 

// floting points in the NEON processor 


// X0 -> pointer to 8 FP numbers 

// Outputs WO 

.text 
.global distance 
distance : 
	ldp q2 , q3 , [x0]
	fsub v1.4s , v2.4s , v3.4s 
	fmul v1.4s , v1.4s , v1.4s 

	faddp v0.4s , v1.4s , v1.4s 
	faddp v0.4s , v0.4s , v0.4s

	// calc sqrt 
	fsqrt s4 , s0 
	fmov s0 , s4 
	ret 


