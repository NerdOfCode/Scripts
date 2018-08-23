/*

  Author: NerdOfCode
  Date: 8/23/2018
  Purpose: Put the given char array in reverse order

*/

#include <stdio.h>

int main(void){


  //Number of characters in array
  #define ARRAY_COUNT 14

  //Word to reverse
  char word[ARRAY_COUNT] = {"this is a test"};

  char reverse_word[ARRAY_COUNT] = {};
  
  int i = 0;

  //Used for starting at the end of the array and moving to the beginning
  int round_count = ARRAY_COUNT - 1;
  
  while(i < ARRAY_COUNT){

    //Began writing to end of array
    reverse_word[round_count] = word[i];

    //Adjust our parameters
    --round_count;
    ++i;
   }

  //Remove trailing newline and any other characters
  reverse_word[ARRAY_COUNT] = '\0';

  //Print the sorted array
  printf("Sorted Array: %s\n",reverse_word);

  return 0;
}
