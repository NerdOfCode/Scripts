import Foundation

/*

 Purpose: Display a bunch of prime numbers
 Note: If no "upperBound" limit is entered. The upperBound will be -> 999 
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

print("Output prime numbers until nth term...")
print("Enter upper bound limit: ",terminator:"")

let upperBound = (Int(readLine()!) ?? (999))

if(upperBound <= 5){
    precondition(upperBound > 4, "upperBound not > 4")
}

for numberToTest in 5 ... upperBound{
    if isPrime(n : numberToTest){
        print(numberToTest)
    }
}
