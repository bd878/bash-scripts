#!/bin/bash
# setting a variable to the output of a loop

variable1=`for i in 1 2 3 4 5
do
  echo -n "$i"  # echo command is critical
done`           # to command substitution here

echo "variable1 = $variable1" # variable1 = 12345

i=0
variable2=`while [ "$i" -lt 10 ]
do
  echo -n "$i"    # echo is necessary
  let "i += 1"
done`

echo "variable2 = $variable2" $ variable2 = 0123456789

exit 0

