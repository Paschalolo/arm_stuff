

.text 
	.global _start 

_start : 
	
	tbl v1.8b , {v2.16b} , v3.8b 
	tbl v1.8b , {v2.16b-v3.16b}, v3.8b 
	tbl v1.8b , {v2.16b-v4.16b}, v3.8b 
	tbl v1.8b , {v2.16b-v5.16b} , v3.8b

	and v0.8b , v1.8b , v2.8b 
	bic v3.16b , v3.16b , v4.16b 
	orr v0.16b , v1.16b , v2.16b 

	
