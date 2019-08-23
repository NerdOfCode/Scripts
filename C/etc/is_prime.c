#include <stdbool.h>
#include <stdlib.h>
#include "../includes/is_prime.h"

bool is_prime(unsigned long long int n)
{
	for (size_t i = 2; i <= n/2 ; i++){
		if (n % i == 0)
			return false;
	}	
	return true;
}
