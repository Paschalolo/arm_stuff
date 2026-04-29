

.data 
	bytevar :  .byte 0
	halfvar : .hword 1, 2 
	wordvar:  .word -1 
	double_word:  .word <.4byte>  1234556777888
	str1: .ascii "Hello world\n" 
	str2: .asciz "Hellow orlf\n" // There is null termination automaitcally put in str2 
	pi : .float 3.14 
	pi1 : .double 22.34232f
