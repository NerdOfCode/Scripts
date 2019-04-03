let unsortedIntegers = [5, 1, 4, 2, 8]                                                                                                                                                                                                                                                                                        
                                                                                                                                                                             
class Sort {                                                                                                                                                                 
    var pass = 0                                                                                                                                                             
    var swaps = 0                                                                                                                                                            
    var totalSwaps = 0                                                                                                                                                       
    var sortedIntegers : [Int] = unsortedIntegers                                                                                                                            
                                                                                                                                                                             
                                                                                                                                                                             
    func swap(Arr : inout [Int], x : Int, y : Int) {                                                                                                                         
        let originalX = Arr[x]                                                                                                                                               
        Arr[x] = Arr[y]                                                                                                                                                      
        Arr[y] = originalX                                                                                                                                                   
    }                                                                                                                                                                        
                                                                                                                                                                             
    /* Bubblesort implementation */                                                                                                                                          
    func sort(Arr: [Int]) {                                                                                                                                                  
        print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedIntegers)")                                                                                      
        pass += 1                                                                                                                                                            
        for _ in 0 ..< sortedIntegers.count  {                                                                                                                               
            for i in 0 ..< sortedIntegers.count - 1 {                                                                                                                        
                if(sortedIntegers[i] > sortedIntegers[i + 1]) {                                                                                                              
                    swap(Arr : &sortedIntegers, x : i, y : i + 1)                                                                                                            
                    swaps += 1                                                                                                                                               
                    totalSwaps += 1                                                                                                                                          
                }                                                                                                                                                            
            }                                                                                                                                                                
            print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(sortedIntegers)")                                                                                  
                                                                                                                                                                             
            if(swaps == 0) {                                                                                                                                                 
                /* The last swap will have 0 swaps, therefore anything after that would be extra */                                                                        
                break                                                                                                                                                        
            }                                                                                                                                                                
                                                                                                                                                                             
            swaps = 0                                                                                                                                                        
            pass += 1                                                                                                                                                        
        }                                                                                                                                                                    
    }                                                                                                                                                                        
}                                                                                                                                                                            
                                                                                                                                                                             
var sort = Sort()                                                                                                                                                            
sort.sort(Arr: sort.sortedIntegers)  
