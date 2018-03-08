/*

Author: NerdOfCode
Purpose: A work in progress shell built in C...
Updated: 3/8/18


*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//Color Constants
#define RED_TEXT "\033[1;31m"
#define YELLOW_TEXT "\x1B[33m"
//Use 43m for background shading
#define RESET "\x1B[0m"

//Function Prototypes
void clean_up();
void help_commands();

int parseCommand();

int main ( void ){

	char input[64];

	while(1){
		printf(YELLOW_TEXT "Command: " RESET, " " );
		scanf("%s",input);

		//Check to see if user wants to exit before re-running loop
		if(strcmp(input,"exit") == 0){
			clean_up();
			exit(1);
		}else if(strcmp(input,"help") == 0){
			help_commands();
		}else{
			//Actually parse the command here
			parseCommand(input);
		}
	}


	//Start the clean up b4 exit
	clean_up();

	return 0;
}

void clean_up(){

	printf("Cleaning up...\n");
	//Reset color values
	printf("%s\n",RESET);

}

void help_commands(){
	printf("Current usage:\n");
	printf("Exit --> Exits this shell...");
}


int parseCommand(char input[64]){

	return 0;

}
