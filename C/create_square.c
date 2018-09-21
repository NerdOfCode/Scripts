#include <stdio.h>
#include <stdlib.h>

int print_square();

int main(int argc,char *argv[]){

        if(argc < 3){
                puts("This program requires you to pass args...");
                puts("For example: ./a.out 5 5");
                return -1;
        }


        print_square(atoi(argv[1]),atoi(argv[2]));

        return 0;

}

int print_square(int width, int length){

        printf("Width: %i, Length: %i\n",width,length);

        for(int i = 0; i <= width; ++i){
          
                printf("*");

        }

        puts("");

        for(int i = 0; i <= length; ++i){
                
                printf("*");
                for(int i = 0; i <= width - 2; ++i){
                        printf(" ");
                }
                printf("*\n"); 

        }


        for(int i = 0; i <= width; ++i){
        
                printf("*");
        
        }
        puts("");
        return 0;

}
