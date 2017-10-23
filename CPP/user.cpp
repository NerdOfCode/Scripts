#include <iostream>
#include <string>
#include <fstream>

using namespace std;


int main(){

        string name;
        string username;
        string dob;
        string filext = ".txt";
        string watch = "/";
        bool file_found;

        cout << "Enter name: ";
        cin >> name;
        //Set the new file name including the file extension
        string file_name = name + filext;
        if(ifstream(file_name)){
                cout << "User File already found..." << endl;
                file_found = true;
        }

        if(file_found){return 1;}

        cout << "Enter username: ";
        cin >> username;


        cout << "Enter DOB(dd/mm/yyyy): ";
        cin >> dob;
        //Half heartedly test to see if the user at least put forward slashes
        if(dob.find(watch) == string::npos){
                cout << "Please enter your correct birthday... and try again" << endl;
                return 0;
        }
        
        ofstream userfile (file_name);
        userfile << "Name: " << name << endl;
        userfile << "UserName: " << username << endl;
        userfile << "DOB: " << dob << endl;
        userfile.close();
        cout << "File has been created..." << endl;
        cout << "File: " << file_name << endl;


        return 0; 


}
