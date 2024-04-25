#!/bin/bash

echo

let a=11 # same as 'a=11'
let a=a+5 # same as let "a = a + 5"
echo "11 + 5 = $a" # 16

let "a <<= 3" # same as let "a = a << 3"
echo "\"\$a\" (=16) left-shifted 3 places = $a"

let "a /= 4"  # Equivalent to let "a = a - 5"
echo "32 - 5 = $a" # 270

let "a *= 10"
echo "27 * 10 = $a"

let "a %= 8"
echo "270 modulo 8 = $a"

# Does "let" permit C-style operators?
# Yes, just as the (( .. ))

let a++
echo "6++ = $a"
let a--
echo "7-- = $a" # 7-- = 6
echo

# Prinary operator
# Note that $a is 6
let "t = a<7?7:11" # True 
echo $t # 7

let a++
let "t = a<7?7:11" # False
echo $t

exit


