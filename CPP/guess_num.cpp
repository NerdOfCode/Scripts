//Author: NerdOfCode

#include <iostream>
#include <stdlib.h> // rand
#include <ctime> // Srand
#include <time.h> // obvious
#include <string> // obvious
#include <stdio.h> // Printf
#include <unistd.h> //Sleep

using namespace std;


//Variable initialization
int guess = 0;
int warning = 0;
int random_gen = 0;
int ran = 0;
int tries = 0;
int wins = 0;
int play;
int rand_one_max = 100;
bool found_rand = false;
//Change this to true if you want the answer to be given out
const bool cheat = false;
//const string escape = 'exit';

int randomize(){
  srand(time(NULL));

  int random_gen = (rand() % rand_one_max);

  if(cheat){cout << "The answer is: " << random_gen << endl;}

  return random_gen;
}



int main(){

  //Get rid of any previous values
  int guess = 0;

  if(!ran){random_gen = randomize();ran+=1;}
  if(warning!=0){cout << "You have received a warning, please re-run this program..." << endl; return 1;}

  cout << "Your range is between 1:" << rand_one_max << endl;
  cout << "Guess a number: ";
  cin >> guess;

  if(guess > random_gen * 200 ){cout << endl << "Calm down there Jim!" << endl << endl;}

  //Escape is currently non functioning
  //if(guess == escape){return 0;}false

  if(!guess){cout<<"Enter a number please..."<<endl;warning+=1;main();}



  if(guess == random_gen){

    cout << endl << "Congrats you win!!!" << endl;
    printf("\n\nIt only took you %d tries!\n\n",tries);
    wins++;
    usleep(1500000);
    if(system("cls")) system("clear");

    cout << "Would you like to play again? Type 1 if so: ";
    cin >> play;
    if(play == 1){ran--;tries=0;main();}else{return 0;}



  }else if(guess != random_gen){

    if(guess > random_gen){

      cout << "Try a lower number..." << endl;

    }else if(guess < random_gen){

      cout << "Try a higher number..." << endl;

    }
    if(warning != 1){tries++;main();}
  }




}
