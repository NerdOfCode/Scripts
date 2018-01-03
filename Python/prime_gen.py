#Important: Built using Python 3.x

import sys

sys.setrecursionlimit(999999)

def isPrime(number, div, count, limit):

    while True:

        if count >= limit:
            print("I'm ready to burst...")
            sys.exit(1)

        if number % div != 0 and div <= number/2:
            div+=1

        elif number % div != 0:
            print("Prime: ", number)
            number += 1
            div = 2
            count += 1
            isPrime(number,div, count, limit)

        else:
            number += 1
            div = 2
            count += 1
            isPrime(number, div, count, limit)




number = 2
div = 2
count = 0
limit=15000

isPrime(number, div, count, limit)
