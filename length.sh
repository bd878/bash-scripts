#!/bin/bash

# ${#var} number of chars in $var
# ${#var} is the length of the first elems in array
# ${#*} and ${#@} give the number of positional params
# ${#array[*]} and ${#array[@]} - number of elemns in array

E_NO_ARGS=65

if [ $# -eq 0 ]
then
  echo "Please invoke script with one or more command-line args"
  exit $E_NO_ARGS
fi

var01=abcdFEKLi8j
echo "var01 = ${var01}"
echo "length of var01 = ${#var01}"
# let's try embedding a space
var02="abcd FDEDKJSif"
echo "var02 = ${var02}"
echo "Length of var02 = ${#var02}"

echo "argc = ${#@}"
echo "argc = ${#*}"

exit 0


