#include <stdio.h>
#include <iostream>
#include <string>
#include <fstream>
#include <stdlib.h>

using namespace std;

int main(){

	string filename;
	string message;

	printf("Enter filename: ");
	cin >> filename;

	if(ifstream(filename)){
		printf("File already exists...\n");
		exit(1);
	}

	printf("Enter message: \n");

	while(1){

		getline(cin, message);

		if(message != "EOF"){
			//ios::app makes the output appended
			ofstream note (filename, ios::app);

        		note  << message << endl;

			note.close();

		}else{
			break;
		}

	}


	if(ifstream(filename)){
		printf("File successfully created!!!\n");
	}


	return 0;


}
