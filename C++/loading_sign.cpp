#include <iostream>
#include <unistd.h> //Sleep function and ms

using namespace std;

int main(void){

	while(true){

		cout << "\b" << flush;
		cout << "|" << flush;

		usleep(7500);
		cout << "\b" << flush;

		cout << "/" << flush;
		usleep(7500);

		cout << "\b" << flush;
		usleep(7500);

		cout << "\b" << flush;
		cout << "-" << flush;
		usleep(7500);

		cout << "\b" << flush;
		cout << "\\" << flush;
		usleep(7500);



	}

}
