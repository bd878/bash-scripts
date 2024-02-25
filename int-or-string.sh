#!/bin/bash

# Variables in bash are untyped
# even if declared

a=2334 # Int
let "a += 1"
echo "a = $a"
echo # still Int

b=${a/23/BB} # Substitute BB for 23
             # B is string now
echo "b = $b"
declare -i b # declarint does not help, b still a string

let "b += 1" # BB35 + 1
echo "b = $b"
echo # empty string is 0


c=BB34
echo "c = $c" # c = BB34
d=${c/BB/23}  # substitute 23 for BB
              # makes $d an integer
echo "d = $d" # d = 2334
let "d += 1"
echo "d = $d" # d = 2335
echo

# ...null variables
e=''          # or e="", e=
echo "e = $e" # e =
let "e += 1"  # arithmetic ops allowed on a null vars?
echo "e = $e" # e = 1
echo          # Null variable transformed into an integer

# ...undeclared vars?
echo "f = $f" # f =
let "f += 1"  # Arithmetic ops allowed?
echo "f = $f" # f = 1
echo          # Undeclared vars transformed into an integer

# However...
let "f /= $undecl_var" # Divide by zero?
# Syntax error: $undecl_var is not set to zero here
#
# But still...
let "f /= 0"
# Division by zero error

exit 0;

