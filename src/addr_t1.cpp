#include <iostream>

extern "C" char* getTitle();

int main(){
	std::cout << getTitle(); 
	std::cout << "Yeah thats right";
	return 0;
}
