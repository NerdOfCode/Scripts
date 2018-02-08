#include <stdio.h>



int check_factors(int num1, int num2, int fin){
        while(num1 * num2 != fin){
                num1++;


                if(num1 > fin/2 && num1 <= fin && num2 <= fin){
                        num1=0;
                        num2++;

                }


        }if(num1 * num2 == fin){
                printf("Factors are %d, and %d for the number: %d\n", num1, num2, fin);

                //If num2 didn't change, send it in for another round
                if(num2 == 2){
                        num2++;
                        check_factors(num1, num2, fin);
                }

                return 0;
        }

}


int main(){
        //Receive the to-be calculated number
        int final;
        printf("Enter final number: ");
        scanf("%d", &final);

        //Set the startings ints
        int numb1 = 2;
        int numb2 = 2;

        //Send the starting factors away
        check_factors(numb1, numb2, final);

        return 0;

}
