/*

  Author: NerdOfCode
  Date: 8/23/2018
  Purpose: Put spaces in between each individual character from the char array

*/

#include <stdio.h>
#include <string.h>

int main( void ){

  #define ARRAY_COUNT 10

  #define NEW_ARRAY_COUNT ARRAY_COUNT * 2
  
  char word[ARRAY_COUNT] = {"NerdOfCode"};

  char new_word[NEW_ARRAY_COUNT] = {};

  //For keeping track of word[] array
  int x = 0;

  //For keeping track of new_word[] array
  int y = 0;
  
  while(x < ARRAY_COUNT){

    new_word[y] = word[x];
    
    ++y;

    new_word[y] = ' ';

    //Move to next element
  }

  new_word[NEW_ARRAY_COUNT] = '\0';
  
  printf("The new array is: %s\n",new_word);
  

  return 0;


}
