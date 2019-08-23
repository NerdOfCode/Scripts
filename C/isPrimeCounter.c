#include <stdio.h>
#include "includes/is_prime.h"

void find_prime_numbers (unsigned long int start)
{
	puts("PRIME NUMBERS");
	
	for (unsigned long int i = start;;i++) {
		if (is_prime(i))
			printf("%li\n",i);
	}

	return;
}

int main (int argc, char *argv[])
{
	find_prime_numbers(0);

        return 0;
}
