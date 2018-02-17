/*
	Purpose: Finds even or odd numbers depending on Input
	Note: Uses common logic to find even/odd values
	Updated: 2/16/18
*/

package main

import (
	"fmt"
	)

func even() {
	var limit int

	fmt.Print("Enter maximum limit: ")
	fmt.Scanln(&limit)

	for start_c := 1; limit > start_c; start_c++{
		start_c++
		fmt.Println(start_c)
	}
}

func odd(){
	var limit int

	fmt.Print("Enter maximum limit: ")
	fmt.Scanln(&limit)

	for start_c := 0; limit >= start_c; start_c++{
		start_c++
		fmt.Println(start_c)
	}


}


func main(){

	var decision string

	fmt.Print("Would you like to find (e)ven or (o)dd numbers: ")
	fmt.Scanln(&decision)

	switch decision{
		case "e":
			even()
		case "o":
			odd()
		default:
			fmt.Println("Unrecognized value...")
			main()

	}


}
