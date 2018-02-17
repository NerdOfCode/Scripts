package main

import (
				"fmt"
				"io/ioutil"
			 )


func file_check(filename string) bool {
	_ , err := ioutil.ReadFile(filename)
	if err != nil {
		fmt.Println("File does not exist...")
		return false
	}else{
		fmt.Println("File exists!!!")
		return true
	}
}


func main() {

	var filename_f string

	fmt.Print("Enter filename: ")
	fmt.Scanln(&filename_f)

	file_check(filename_f)

}
