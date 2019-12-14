import Foundation

/*
Purpose: Display a bunch of prime numbers using a recursive method
Note: If no "upperBound" limit is entered. The upperBound will be -> 999 
*/

// func primeList
// Params:
//   n => Starting nth digit
//   upperBound => Ending nth digit

func primeList(n: Int, upperBound: Int) {
    guard n > 4 else { return primeList(n: n+1, upperBound: upperBound) }
    guard n < upperBound else { return }

    for i in 2 ... n/2 {
        if n % i == 0 {
            return primeList(n: n+1, upperBound: upperBound)
        }
    }
    print("Prime: ", n)
    return primeList(n: n+1, upperBound: upperBound)
}

print("Output prime numbers until nth term...")
print("Enter upper bound limit: ", terminator: "")

if let upperBound = Int(readLine()!) {
    primeList(n: 0, upperBound: upperBound)
} else {
    print("Unknown upperBound value")
}
