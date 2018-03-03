/*

Purpose: A simple count down timer according to user input
Author: NerdOfCode
Updated: 3/2/18

*/

#include <stdio.h>
#include <unistd.h> //Sleep

void main( void ){

    int countdown_seconds = 0;

    printf("Enter time to count down in seconds: ");
    scanf("%i",&countdown_seconds);

    for(int i = 0; i < countdown_seconds;){
        countdown_seconds = countdown_seconds - 1;
        printf("Time remaining: %i\n",countdown_seconds);
        sleep(1);
    }



}
