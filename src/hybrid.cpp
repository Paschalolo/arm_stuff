#include <cstdio> 
extern "C" void asmMain(void);
int main(){
	std::printf("this is a hybrid "); 	
	asmMain(); 
	std::printf("through");
	return 0 ; 
}
