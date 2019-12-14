/*
Purpose: Test if an inputted number is prime
*/

package main

import "fmt"

func isPrime(input int) bool {
	for divisor := 2; divisor <= input/2; divisor++ {
		if input%divisor == 0 {
			return false
		}
	}
	return true
}

func main() {
	var input int

	fmt.Print("Enter number: ")
	fmt.Scanln(&input)

	isPrime := isPrime(input)

	fmt.Printf("%d is Prime: %v\n", input, isPrime)
}
