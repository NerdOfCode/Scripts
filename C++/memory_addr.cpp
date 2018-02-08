//Author: NerdOfCode
//Purpose: To simply display the memory address of the inputted info
#include <iostream>
using namespace std;

int* age = new int;


inline int get_addr(){
        cout << age << endl;
        return 0;

}


int main(){


        int* age = new int;

        cout << "Enter int: ";

        cin >> *age;

        cout << "Get_Addr Status: " << get_addr() << endl;



        delete age;

        return 0;



}
