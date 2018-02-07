#include <iostream>
#include <stdio.h>
using namespace std;

int main(int argc, char **argv){

	int start = 4;
	int divide1 = 2;
	//Change to 1 to show not prime numbers
	int show_not_prime = 0;
	//Change to 0 to hide primes
	int show_prime = 1;

	while(1){
		if(start % divide1 == 0){
			if(show_not_prime){
				printf("%d is not a prime!\n",start);
			}
			start++;
			divide1 = 2;
		}else if(divide1 <= start/2){
			divide1++;
		}else if(start % divide1 != 0){
			if(show_prime){
				printf("%d is a prime!!!\n", start);
			}
			start++;
			divide1 = 2;

		}
	}

	return 0;

}
