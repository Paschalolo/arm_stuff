
.text 
	.global max 
// a -> w0 , b-> w1 
max : 
	cmp w0, w1 
	csel w0 , w0  , w1  , hi 
	ret 
