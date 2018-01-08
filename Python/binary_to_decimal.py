#!/usr/bin/python3

#Built using Python 3.x

import sys


debug = False

bin = input("Enter binary: ")

length = len(bin)
bin_arr = list(bin)
dec_place = 0
math = 0
total = 0
a=-1

while length > 0:

    #Reset
    math = 0
    first = 0

    first = bin_arr[a]

    exp = 2 ** dec_place

    math = int(first) * int(exp)


    total = int(math) + int(total)

    if debug:
        print("Total: {} For: {}".format(total,first))
        print("At exponent: ", exp)


    dec_place = dec_place + 1

    length = length - 1

    a = a - 1

print("Decimal: " + str(total))
