//Author: NerdOfCode
//Notes: This program or script whatever is not designed to handle big numbers
//treat it with respect


#include <stdio.h>

int main(){
        unsigned int _numb_;
        unsigned int start = 2;
        unsigned int get_numb_half;


        printf("Enter number to test: ");

        scanf("%d", &_numb_);
        get_numb_half = _numb_ / 2;
        while(get_numb_half > start){
                if(_numb_ % start == 0){
                        printf("%d is not prime\n", _numb_);
                        return 0;
                }else{
                        start++;

                }
        }
        printf("%d is prime\n",_numb_);
        return 0;

}
