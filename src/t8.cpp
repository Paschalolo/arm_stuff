

#include <iostream> 
struct KK{
	float a , b, c, d; 
};
extern "C" float distance(KK& ko);
int main(){
	KK pop{1.0f,2.0f,3.0f,4.0f};
	std::cout << distance(pop);
	return 0;
}
