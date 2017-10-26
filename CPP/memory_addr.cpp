//Author: NerdOfCode
//Purpose: To simply display the memory address of the inputted info
#include <iostream>
using namespace std;

int main(){


        int* age = new int;

        cout << "Enter int: ";

        cin >> *age;

        cout << age << endl;;

        delete age;

        return 0;



}
