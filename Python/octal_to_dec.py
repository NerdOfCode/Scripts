#!/usr/bin/python3

#Built using python 3.x

debug = False

octal = input("Enter octal input: ")

length = len(octal)

octal_arr = list(octal)

exp_place = 0

math = 0

total = 0

a=-1

while length > 0:

    first_numb = octal_arr[a]

    exp = 8 ** exp_place

    math = int(first_numb) * int(exp)

    total = math + total

    exp_place = exp_place + 1

    a = a -1

    length = length - 1

    if debug:
        print("Total: {}, For {}".format(total, first_numb))

print("Decimal: ", str(total))
