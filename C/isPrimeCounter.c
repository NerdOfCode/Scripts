#include <stdio.h>



int main(){

        int start_numb=2;
        int start_div=2;
        int status;



        while(1==1){
                int shorten = start_numb / 2;
                if(start_numb % start_div != 0 && start_div <= shorten){
                        //printf("Number is not prime: %d", start_numb);
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
