
#ifndef MY_OPENNAT
#define MY_OPENNAT
typedef long long  unmode_t; 
long my_openat(int dfd , const char* filename , int flags , unmode_t mode ){
	register int w0 __asm__("w0") = dfd   ; 
	register char const * x1 __asm__("x1") = filename   ; 
	register int w2 __asm__("w2") = flags   ;
	register unmode_t x3 __asm__("x3") = mode ;
	__asm__ volatile(
			"mov x8 , #0x38\n\t"
			
			"svc #0 \t\n"
			: "+r" (w0) /* output regsiters */
			:"r" (x1) , "r"(w2) , "r"(x3) /*Input regsitser */
			:"memory" , "cc" /* CLobber list */
			);
	return (long)w0; 
}
#endif 
