/*

  Author: NerdOfCode
  Date: 8/22/2018
  Purpose: Sort through given list of numbers and arrange them least to greatest

*/

#include <stdio.h>
#include <string.h>

int main(void){

  //Amount of integers in our array
  #define INT_COUNT 6

  //Safe number to exit the loop, without skipping anything important
  #define SAFE_EXIT 999

  //Define integers to sort
  int unsorted_ints[INT_COUNT] = {5, 4, 27, 2, 1, 0};

  //Empty list for the sorted ints
  int sorted_ints[INT_COUNT] = {0, 0, 0, 0, 0};
  
  //Compare unsorted int to the round count
  int round_count = 0;

  //Element to access
  int i = 0;

  //Current pos of new list
  int x = 0;
  
  while(round_count <= SAFE_EXIT){
    if(i < INT_COUNT){
      if(unsorted_ints[i] == round_count){
	sorted_ints[x] = unsorted_ints[i];
	//Increment the current pos of the new list
	x += 1;
      }
      ++i;
    }else{    
      i = 0;
      round_count += 1;
    }
  }

  for(i=0;i<INT_COUNT;++i){
    printf("The sorted list is: %i\n",sorted_ints[i]);
  }
  
  return 0;
}
