/*
  Author: NerdOfCode
  Purpose: Convert an inputted string into MD5 or SHA-1 hash
  Note: MD5 and SHA-1 are insecure and should not be used for security purposes...
  NOTE: this program works best with single word inputs...
  Updated: 2/14/18
*/

package main

import ("fmt"
        "crypto/md5"
	      "crypto/sha1"
        "io")

func md5_hash(u_input string) int{

  h := md5.New()

  io.WriteString(h, u_input)

  fmt.Printf("%x\n",h.Sum(nil))

  return 0

}

func sha1_hash(u_input string) int{
  h := sha1.New()

  io.WriteString(h, u_input)

  fmt.Printf("%x\n", h.Sum(nil))

  return 0
}

func main(){

  var u_input string
  var decision string

  fmt.Print("Would you like to use (m)d5 or (s)ha-1: ")
  fmt.Scanln(&decision)

  fmt.Print("Enter string: ")
  fmt.Scanln(&u_input)

  if decision == "m" {
    md5_hash(u_input)
  } else {
    sha1_hash(decision)
  }


}
