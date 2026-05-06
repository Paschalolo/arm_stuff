

#include <stdio.h> 

struct tri {
	unsigned char a, b, c;
};

__attribute__((used, noinline )) unsigned char get2(struct tri *tt){
		return tt->b ;
}
int main(){
	printf("%lu", sizeof(struct tri));
}
