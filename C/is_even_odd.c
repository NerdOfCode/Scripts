/* 
 * is_even_odd.c
 *	Task: Test if a given long int is an even or odd number and return type bool
 * 
 *
 * */

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

bool is_even(long int n)
{
	if (n % 2 == 0) {
		return true;
	} else {
		return false;
	}
}

int parse_args(int argc, char *argv[])
{
	long int u_x = 0;

	if (argc == 1) {
		printf("Enter number: ");
		scanf("%li", &u_x);
	} else  {
		u_x = atoi(argv[1]);
	}

	if (is_even(u_x)) {
		printf("%li is even\n", u_x);
	} else {
		printf("%li is odd\n",  u_x);
	}

	return 0;
}

int main ( int argc, char *argv[] )
{
	parse_args(argc, argv);

	return 0;
}
