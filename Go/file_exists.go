/*
Purpose: Check whether a file exists or not...
*/

package main

import (
	"fmt"
	"io/ioutil"
)

func file_check(filename string) bool {
	_, err := ioutil.ReadFile(filename)
	if err != nil {
		return false
	} else {
		return true
	}
}

func main() {
	var filename string

	fmt.Print("Enter filename: ")
	fmt.Scanln(&filename)

	fileExists := file_check(filename)

	if fileExists {
		fmt.Println("File exists!")
	} else {
		fmt.Println("File is non-existent!")
	}
}
