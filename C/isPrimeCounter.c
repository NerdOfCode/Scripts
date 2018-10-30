#include <stdio.h>

int main(void){

        int start_numb=2;
        int start_div=2;
        int status;
        int shorten; 

        while(1){
                shorten = start_numb / 2;
                if(start_numb % start_div != 0 && start_div <= shorten){
                        start_div++;
                }else if(start_div == shorten + 1){
                        printf("Found a prime Number: %d\n", start_numb);
                        start_div = 2;
                        start_numb++;
                }else{
                        start_numb++;
                        start_div = 2;
                }
        }
        return 0;
}
