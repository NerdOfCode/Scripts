/*
  Author: NerdOfCode
  Purpose: Convert an inputted string into MD5 hash
  Note: MD5 is insecure and should not be used for security purposes...
  NOTE: this program works best with single word inputs...
  Updated: 2/14/18
*/

package main

import ("fmt"
        "crypto/md5"
        "io")

func hash(u_input string) int{

  h := md5.New()

  io.WriteString(h, u_input)

  fmt.Printf("%x\n",h.Sum(nil))

  return 0

}

func main(){

  var u_input string

  fmt.Print("Enter string: ")
  fmt.Scanln(&u_input)

  hash(u_input)

}
