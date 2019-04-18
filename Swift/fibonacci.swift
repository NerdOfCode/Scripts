// Fibonacci number sequence represented in Swift

func fibonacci( _ upperBound : UInt32? = nil ) {
    if let upperBound = upperBound {
        var x = 1
        var y = 1
        var z = 2
        
        while z <= upperBound {
            print(x)
            x = y
            y = z
            z = x + y
        }
        
    } else {
        print("Please specify upperbound limit! ")
    }
}

fibonacci( 999 )
