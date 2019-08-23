// factor_finder.c
// TODO: Fix a memory freeing issue that on rare occassion causes a program crash

#include <stdio.h>
#include <stdlib.h>

typedef struct 
{
	long int numb;
	int *factors;
	size_t f_len;
} Factor;

// Return values: 1 => Argument(arg=argv[1]) passed, 0 => No Argument
int parse_args(int argc, char *argv[]);

void print_array(int *array, size_t len); 
void ff_wrapper(int n);

void find_factors (Factor *factor) {
	size_t factor_size = 0, cur_factor = 0;
	factor->factors = (int *) calloc(factor_size, sizeof(int));

	if (!factor->factors) {
		return;
	}

	for (size_t x = 1; x <= factor->numb; x++) {
		if (factor->numb % x == 0) {
			factor->factors = (int *) realloc(factor->factors, ++factor_size);
			factor->factors[cur_factor++] = x;
		}
	}
	factor->f_len = cur_factor;
}

int main ( int argc, char *argv[] ) {

	if (parse_args(argc, argv)) {
		return 0;
	}
	
	return 0;
}

int parse_args (int argc, char *argv[]) 
{
	int number = 0;

	if (argc == 1 || argc > 2) { 
		printf("Enter number: ");
		scanf("%d", &number);
	} else {
		number = atoi(argv[1]);
	}

	ff_wrapper(number);

	return 1;
}

void ff_wrapper (int n)
{
	Factor factor;
	Factor *p_factor = &factor;
	
	p_factor->numb = (long int) n;
	
	find_factors(p_factor);
	print_array(p_factor->factors, p_factor->f_len);

	if (p_factor->factors) {
		free(p_factor->factors);	
	}

	return;
}

void print_array (int *array, size_t len)
{
	for (size_t i = 0; i < len; i++) 
		printf("%i ", array[i]);

	puts("");

	return;
}


