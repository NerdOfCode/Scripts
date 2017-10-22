//Author: NerdOfCode
//Notes: A simple program that determines prime numbers for as long as the program is running

#include <stdio.h>

int main(){

        int cur=2;
        int find=2;

        while(1==1){
                if(cur % find == 0){
                        //printf("%d is not prime",cur);
                        cur++;
                }else if(cur % find != 0 && cur>find){
                        printf("%d is prime\n",cur);
                        cur++;
                }else{
                        find++;
                }

        }



}
