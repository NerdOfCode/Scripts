/*

Author: NerdOfCode
Purpose: A work in progress shell built in C... Designed to be lightweight and fast...
Updated: 3/8/18
NOTE: THIS SCRIPT HAS BEEN MOVED TO A REPOSITORY UNDER NERDOFCODE'S GITHUB ACCOUNT


*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h> //Access
#include <string.h>

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

		//TODO 
		// - logging

		//Convert input to lowercase for unitext
		input[0] = tolower(input[0]);

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
	//TODO 
	// - close any files used for logging


}

void help_commands(){
	printf("Current usage:\n");
	printf("exit --> Exits this shell...\n");
}


int parseCommand(char input[64]){

	int command_status = 0;
	char filename[66];

	//Check if command exists relative to its filename

	//Add file extension
	strcat(filename,input);
	strcat(filename,".c");

	//if(access(filename, F_OK) == 0){
		char version[] = "https://github.com/NerdOfCode/Restricted-Shell";
		printf("Please use the updated version at: %s\n",version);
	//}

	return 0;
}
