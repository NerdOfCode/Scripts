#include <stdio.h>
#include <stdlib.h> //Exit

int main(){

        #define null 0
        #define MAX_BUFFER 256

        int three;
        int copy = 0;
        int result;
        int seperate;
        int count=0;


        printf("Enter a three digit number: ");
        result = scanf("%i", &three);
        copy=three;
        if(result == 0){
                printf("No input or error or letter input\n");
                exit(1);
        }

        if(three!=null){
                while(!(1==8)){
                        if(three % 10 == 0){
                                printf("Last Digit: 0\n");
                                exit(0);
                        }else{
                        while(!(three % 10 == 0)){
                                        three--;
                                        count++;
                                }
                                printf("The last digit: %i\n",count);
                                three=three/10;
                                //exit(0);
                        }
                        count=0;
                        if(three % 10 == 0){
                                printf("The second digit: 0\n");
                        }else{
                                while(!(three % 10 == 0)){
                                        three--;
                                        count++;
                                }
                                printf("The second digit: %i\n",count);
                                three=three/10;
                                //exit(0);
                        }
                        count=0;
                        if(three % 10 == 0){
                                printf("The first digit: 0\n");
                        }else{
                                while(!(three % 10 == 0)){
                                        three--;
                                        count++;
                                }
                                printf("The first digit: %i\n",count);
                                exit(0);

                        }


                }


                exit(0);
                  
        }


        exit(0);
}
