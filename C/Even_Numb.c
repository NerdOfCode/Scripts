#include <stdio.h>

int main(int argc){

	int start = 2;
	int limit = 0;

	//Check argv
	if(argc > 1){
		printf("This program does not accept command line arguements!!!\n");
		return 0;
	}


	printf("Please enter a maximum number limit: ");
	scanf("%d",&limit);
	

	while(start <= limit){
		if(start % 2 == 0){
			printf("Even: %d\n", start);
			start++;
		}else{
			start++;
		}

	}
	return 1;
}
