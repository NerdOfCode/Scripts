/*
Purpose: To read a file through input and output it...
*/

package main

import (
	"fmt"
	"io/ioutil"
)

func read_file(filename string) (string, bool) {
	file, err := ioutil.ReadFile(filename)
	if err != nil {
		fmt.Println(err)
		return "", true
	}

	return string(file), false
}

func main() {
	var filename string

	fmt.Print("Enter filename: ")
	fmt.Scanln(&filename)

	fileContents, err := read_file(filename)

	if !err {
		fmt.Println(fileContents)
	}
}
