/*
Author: NerdOfCode
Purpose: Convert an inputted string into MD5 or SHA-1 hash
*/

package main

import (
	"bufio"
	"crypto/md5"
	"crypto/sha1"
	"crypto/sha256"
	"crypto/sha512"
	"fmt"
	"io"
	"os"
)

func md5_hash(u_input string) {
	h := md5.New()

	io.WriteString(h, u_input)

	fmt.Printf("%x\n", h.Sum(nil))
}

func sha1_hash(u_input string) {
	h := sha1.New()

	io.WriteString(h, u_input)

	fmt.Printf("%x\n", h.Sum(nil))
}

func sha256_hash(u_input string) {
	h := sha256.New()

	io.WriteString(h, u_input)

	fmt.Printf("%x\n", h.Sum(nil))
}

func sha512_hash(u_input string) {
	h := sha512.New()

	io.WriteString(h, u_input)

	fmt.Printf("%x\n", h.Sum(nil))
}

func main() {
	var u_input string
	var decision string

	reader := bufio.NewReader(os.Stdin)

	fmt.Printf("Pick a hashing algorithm:\n")
	fmt.Printf("\t(1)MD5\n")
	fmt.Printf("\t(2)SHA-1\n")
	fmt.Printf("\t(3)SHA-256\n")
	fmt.Printf("\t(4)SHA-512\n")

	fmt.Print("Choice: ")
	fmt.Scanln(&decision)

	fmt.Print("Enter string: ")
	u_input, _ = reader.ReadString('\n')

	switch decision {
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
