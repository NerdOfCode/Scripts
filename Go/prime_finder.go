/*
	Author: NerdOfCode

	Purpose: Simple program that displays prime numbers forever until either either
	The electricity stops flowing or the user interupts!

	Updated: 2/14/18
*/

package main

import "fmt"


func prime_finder(debug bool) float32 {

	var start int = 2
	var div int = 2

	for {
		if start % div == 0 {
			//fmt.Println("Not prime: ", start)
			start++
			div = 2
		} else if start % div != 0 && div <= start/2 {
			if debug{
				fmt.Println("Possible Prime: ", start)
			}
			div++
		}else{
			fmt.Println("Prime: ", start)
			if debug{
				fmt.Println("Prime: ", start," Highest tested divisor:  ", div)
			}else{
			}

			start++
			div = 2
		}
	}

		return 0;

}

func main(){

	//Simply set to 'true' if wanting a more debug or detailed mode!
	debug := false

	//Basically all we need to run is prime_finder for now :)
	prime_finder(debug)


}
