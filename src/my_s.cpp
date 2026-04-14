#include <cstdio> 


int main(){
	int a {100}; 
	__asm__ (
			"add %1 , %1 , #2"
			: "+r"(a)// output registers
			:	 //
			: // clobbers 
			);
	std::printf("%d is a " , a);

}
