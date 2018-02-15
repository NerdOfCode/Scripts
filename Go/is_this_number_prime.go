/*
  Author: NerdOfCode
  Purpose: Test if an inputted number is prime
  Updated: 2/14/18
*/

package main

import "fmt"

func prime_test(input int) int{

  var divisor int = 2

  for {

      if input % divisor == 0 {

        fmt.Println("Not prime: ", input)
        break

      } else if divisor <= input/2 {

        divisor++

      } else {

        fmt.Println("Prime: ", input)
        break

      }

  }

  return 0

}

func main(){

	var input int

	fmt.Print("Enter number: ")
	fmt.Scanln(&input)

	prime_test(input)

}
