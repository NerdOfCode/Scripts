/*
Author: NerdOfCode
Purpose: To delete inputted file
Updated: 2/26/18
*/

#include <stdio.h>
#include <stdlib.h>
#include "includes/default.h"

int main ( void ) {

	char filename[Sof_INPUT_STRING] = "";
	short int status = 0;

	// Get filename
	printf("Enter filename to delete: ");
	scanf("%s",filename);

	status = remove(filename);

	if (status == 0) {
		printf("File deleted!\n");
		return(1);
	} else {
		fprintf(stderr,"An error has occurred...\n");
		return(-1);
	}


}
