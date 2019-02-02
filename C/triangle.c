/*
  Author: NerdOfCode
  Purpose: Print a triangle that varies based on thee number of ROWS specified
  Compile Parameters: gcc -O -std=gnu17 triangle.c
  Updated: 2/2/19
*/

#include <stdio.h>

/* Let's build a triangle in C */

#define ROWS 15

#define TRUE 1
#define FALSE 0

void print_triangle( void ){

  typedef int bool;

  /* Number of stars to start the first row with */
  int number_of_stars = 1;
  int difference = 1;

  bool on = TRUE;
  int number_of_spaces = 0;
  
  for(int row = 0; row <= ROWS ; row++){
    while(number_of_stars > 0){
      if(on){
	/* Print the largest amount of spaces on the first row - and no spaces on the last row (row with largest amount of stars) */
	for(int space = 0; space <= (ROWS - row); space++){
	  /* Print the space here */
	  printf(" ");
	}
	/* Only print spaces at the beginning of each row  */
	on = FALSE;
      }
      /* Print the star here */
      printf("*");
      /* We printed one star - next! */
      --number_of_stars;
    }
    /* Calculate the number of stars in relation to the row and the difference between the number of stars to be printed */
    number_of_stars = (row + 1) + (++difference);
    /* Prepare to print the next row */
    on = TRUE;
    /* Add one space to calculate the offset of two more stars */
    ++number_of_spaces;
    /* Output a newline to create the next row */
    puts("");
  }
  
}

int main( void ) {
  print_triangle();
  return 0;
}
