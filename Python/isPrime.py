#Important: Built using Python 3.x

import sys

def isPrime(number, div):

    while True:

        if number % div != 0 and div <= number/2:
            div+=1

        elif number % div != 0:
            print("Prime: ", number)
            sys.exit(0)

        else:
            print("Not prime: ", number)
            print("Divisible by: ", div)

            #Send it in for another round

            if div == 2 or div == 4 or div == 5:
                div+=1
                isPrime(number, div)
            sys.exit(0)

number = int(input("Enter number: "))

div = 2

isPrime(number, div)
