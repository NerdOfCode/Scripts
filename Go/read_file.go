/*
  Purpose: To read a file through input and output it...
  Updated: 2/15/18
*/

package main

import (
        "fmt"
        "io/ioutil"
)

func read_file(filename string, debug bool) bool {

  file, err := ioutil.ReadFile(filename) // just pass the file name
  if err != nil {
      //fmt.Print(err)
      fmt.Println("File does not exist")
      return false
  }

  if debug{
    fmt.Println("Bytes: ", file) // print the content as 'bytes'
    fmt.Println("########################################################################")

  }

  //Convert file contents to string
  n_file := string(file)


  fmt.Println(n_file) // print the content as a 'string'

  return true
}

func main(){

  //Change debug to 'true' for debug mode
  var debug bool = false
  var filename string

  fmt.Print("Enter filename: ")
  fmt.Scanln(&filename)

  read_file(filename, debug)

}
