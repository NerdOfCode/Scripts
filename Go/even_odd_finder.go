/*
Purpose: Finds even or odd numbers depending on Input
*/

package main

import (
	"fmt"
)

func even(limit int) {
	for i := 2; limit >= i; i += 2 {
		fmt.Println(i)
	}
}

func odd(limit int) {
	for i := 1; limit >= i; i += 2 {
		fmt.Println(i)
	}
}

func main() {
	var decision string
	var limit int

	fmt.Print("Would you like to find (e)ven or (o)dd numbers: ")
	fmt.Scanln(&decision)

	fmt.Print("Enter maximum limit: ")
	fmt.Scanln(&limit)

	switch decision {
	case "e":
		even(limit)
	case "o":
		odd(limit)
	default:
		fmt.Println("Unrecognized value...")
		main()
	}
}
