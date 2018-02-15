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
        "crypto/sha256"
        "crypto/sha512"
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

func sha256_hash(u_input string) int{
  h := sha256.New()

  io.WriteString(h, u_input)

  fmt.Printf("%x\n", h.Sum(nil))

  return 0

}

func sha512_hash(u_input string) int{
  h := sha512.New()

  io.WriteString(h, u_input)

  fmt.Printf("%x\n", h.Sum(nil))

  return 0
}


func main(){

  var u_input string
  var decision string

  //Basically print a menu
  fmt.Println("Pick a hashing algorithm: ")
  fmt.Println("(1)MD5")
  fmt.Println("(2)SHA-1")
  fmt.Println("(3)SHA-256")
  fmt.Println("(4)SHA-512")

  fmt.Print("Input: ")
  fmt.Scanln(&decision)

  fmt.Print("Enter string: ")
  fmt.Scanln(&u_input)

  switch decision{
    case "1":
		  md5_hash(u_input)
    case "2":
      sha1_hash(u_input)
    case "3":
      sha256_hash(u_input)
    case "4":
      sha512_hash(u_input)
  }
}
