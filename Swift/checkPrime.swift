import Foundation

/*

 Purpose: Test whether a number is prime or not...
 Note: If no number is supplied, a random number will be generated.
 Updated: 12/18/18

*/


func isPrime(n : Int) -> Bool {
    guard n > 4 else { fatalError("Error: isPrime(n : Int) --> n ! <= 4 ")  }  

    for x in 2 ... n/2 {
        if n % x == 0 {
            return false
        }
    }
    return true
}

print("Test prime numbers...")
print("Enter Number: ", terminator:"")

let numberToTest = (Int(readLine()!) ?? Int.random(in: 0 ... 99999))

print("The number \(numberToTest) is \(isPrime(n:numberToTest) ? "Prime" : "Not Prime")")
