
#include <iostream>

using namespace std;

int main(){
  
  int isPrime;
  int guess=2;
  
  cout << "Enter number to test if it is prime: ";
  cin >> isPrime;
  
  while(isPrime >= guess){
    
    if( guess != isPrime && isPrime%guess == 0 ){
      
      cout << isPrime << " is not a prime number!" << endl;
      break;
      
    }else if(guess==isPrime){
      
      cout << isPrime << " is a prime number!"<< endl;
      break;
      
    }else{
      
      guess++;

    }
  }
  
return 0;
  
}
