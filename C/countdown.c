/*

Purpose: A super simple count down timer according to user input
Author: NerdOfCode
Updated: 3/2/18

*/

#include <stdio.h>
#include <unistd.h> //Sleep
#include <stdlib.h> //atoi

void main( int argc, char *argv[] ){

    int countdown_seconds = 1;

    //Accept command line args
    if(argc < 1){
        printf("Enter time to count down in seconds: ");
        scanf("%i",&countdown_seconds);
    }else{
        //Convert string to interger
        countdown_seconds = atoi(argv[1]);
    }

    //Actual simple countdown mechanism below
    for(int i = 0; i < countdown_seconds;){
        printf("Time remaining: %i\n",countdown_seconds);
        countdown_seconds = countdown_seconds - 1;
        sleep(1);
    }



}
