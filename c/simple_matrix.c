#include <stdio.h>
#include <stdlib.h>
//char spam[64];
int i;

int main(){
  #define ANSI_COLOR_GREEN  "\x1b[32m"
  #define ANSI_COLOR_RESET "\x1b[0m"


  char alpha_numeric[] = "0123456789"
  "abcdefghijklmnopqrstuvwxyz"
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  //printf("Enter character to create loading sign: ");
  //fgets(spam,64,stdin);
  while(1==1){

    printf(ANSI_COLOR_GREEN "%c" ANSI_COLOR_RESET,alpha_numeric[rand() % (sizeof(alpha_numeric) - 1)]);

    //Old matrix below
    //char random_letter = 'A' + (random() % 26);
    //printf(ANSI_COLOR_GREEN "%c" ANSI_COLOR_RESET,random_letter );

  }
  return 0;
}
