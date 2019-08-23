// is_prime.c

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "includes/is_prime.h"

void parse_args(int argc, char *argv[])
{
	unsigned long long int n = 0;

	if (argc == 1) {
		printf("Enter number: ");
		scanf("%llu", &n);
	} else {
		char *p_argv = "";
		n = strtoull(argv[1], &p_argv, 0);
	}

	if (is_prime(n)) {
		printf("%llu is prime\n", n);
	} else {
		printf("%llu is NOT prime\n", n);
	}

	return;
}

int main (int argc, char *argv[])
{
	parse_args(argc, argv);

	return 0;
}
