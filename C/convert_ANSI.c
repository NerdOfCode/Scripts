//Purpose: To convert inputted characters into ANSI relations...

#include <stdio.h>
#include <stdlib.h>

#define NULL2 1

int convert();

int main( int argc ){


	if(argc != NULL2){
		puts("HELP: ");
		printf("Note: It is recommended that if you have a space in your string...\nYou put an underscore (_) between the words...\n");
                printf("Also, if you need to use an underscore for some reason, just use the '\\' character... Ex: \\_\n");
		exit(0);
	}

	//Give user some background info
		printf("Note: It is recommended that if you have a space in your string...\nYou put an underscore (_) between the words...\n");
		printf("Also, if you need to use an underscore for some reason, just use the '\\' character... Ex: \\_\n");
		
		convert();
		
		return 0;
}

int convert( void ){
	//Define variables and request memory allocation space
	unsigned char *text;
	text = (char *) malloc(25 * sizeof(char));

	if(text == NULL){
		printf("Not enough system resources available...\n");
		exit(1);
	}

	printf("Enter text: ");

	scanf("%s",text);

	int i = 0;

	while(text[i] != 48){
		
		if(text[i] == 0){
			break;
		}

		//Enable the '\' escape character
		if(text[i] == 92){
			if(text[i++] == 95){
				
			}
		}else if(text[i] == 95 || text[i] == 92){
			i++;
		}

		if(text[i] != 0){
			printf("For: %c, ANSI code is: %d\n",text[i],text[i]);
		}

		i++;
	}


	//Release or 'free' allocated memory
	free(text);


	return 0;
}
