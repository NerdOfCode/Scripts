using System;
using System.Collections.Generic;

public class PrimeNumber {
    /*                                                                                                                                                                                                      
      Arguments:                                                                                                                                                                                            
          [1] => A potential prime number                                                                                                                                                                   
      Returns:                                                                                                                                                                                              
          [1] => Bool (true => prime, false => !prime)                                                                                                                                                      
     */
    public bool isPrime(int potentialPrimeNumber){
        for(int startFactor = 2; startFactor <= potentialPrimeNumber/2; startFactor++){
            if(potentialPrimeNumber % startFactor == 0){
                return false;
            }
        }
        return true;
    }

    /*                                                                                                                                                                                                      
      Arguments:                                                                                                                                                                                            
         [1] => A potential prime number                                                                                                                                                                    
      Returns:                                                                                                                                                                                              
         [1] => Bool (true => pirme, false => !prime)                                                                                                                                                       
         [2] => List<int> (factors)                                                                                                                                                                         
     */

    public Tuple<bool, List<int>> isPrimeAndFactors(int potentialPrimeNumber){
        if(!isPrime(potentialPrimeNumber)){
            return Tuple.Create(true, factors(potentialPrimeNumber));
        }else{
            return Tuple.Create(false, new List<int>(){
                    1,
                    potentialPrimeNumber
                });
        }
    }
    /*                                                                                                                                                                                                      
      Arguments:                                                                                                                                                                                            
          [1] => Not a prime number                                                                                                                                                                         
      Returns:                                                                                                                                                                                              
          [1] => Literal list of factors of Argument                                                                                                                                                        
     */
    public List<int> factors(int notPrimeNumber){
        var factors = new List<int>();
        for(int startFactor = 2; startFactor <= notPrimeNumber/2; startFactor++){
            if(notPrimeNumber % startFactor == 0){
                factors.Add(startFactor);
            }
        }
        return factors;
  }
}

class primeOrFactor {
    static void Main(string[] args) {
        if(args.Length == 0){
            Console.WriteLine("Please pass a number to test: prime.cs 3301");
        }else if(args.Length == 1){
            int number;
            if(Int32.TryParse(args[0],out number)){
                PrimeNumber prime = new PrimeNumber();
                Console.WriteLine($"{number} is prime: {prime.isPrime(number)}");
                Console.Write("Factors: ");
                foreach(var factor in prime.isPrimeAndFactors(number).Item2)
                    Console.Write($"{factor} ");
                Console.WriteLine("");
            }else{
                Console.WriteLine("Please pass an Int, as an argument!");
                Environment.Exit(1);
            }
        }else{
            Console.WriteLine("Please only specify one argument.");
            Environment.Exit(1);
        }
    }
}

