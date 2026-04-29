// author : Paschal Ahnmsisi 


//===============================
// extern "C" char* getTitle();
//===============================

.data 
	pboi : .asciz "Paschal is lovely"
.text
	.global getTitle

getTitle : 
	adrp x0 , pboi 
	add x0 , x0 , :lo12:pboi
	ret 
