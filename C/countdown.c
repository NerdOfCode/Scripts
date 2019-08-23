/*

Purpose: A super simple count down timer according to user input
Author: NerdOfCode
Updated: 3/2/18

*/

#include <stdio.h>
#include <unistd.h> //Sleep
#include <stdlib.h> //atoi

int main( int argc, char *argv[] ){

	int countdown_seconds = 0;

	//Accept command line args
	if (argc == 1){
		printf("Enter time(unit: s): ");
		scanf("%i",&countdown_seconds);
	} else {
		//Convert string to interger
		countdown_seconds = atoi(argv[1]);
	}

	//Actual simple countdown mechanism below
	for (int i = 0; i < countdown_seconds;) {
		printf("%i",countdown_seconds);
		--countdown_seconds; 
		sleep(1);
		puts("");
	}
	return 0;
}
