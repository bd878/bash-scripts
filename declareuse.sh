#!/bin/bash
#
# Showcase of some 'declare' uses

func1 ()
{
  echo This is a function
}

declare -f   # Lists the function above

echo

declare -i var1   # var1 is an integer
var1=2367
var1=var1+1       # Integer declaration eliminates the need for 'let'
echo "var1 incremented by 1 is $var1"

declare -r var2=13.36 # declare permits setting a var property
                      # and simultaneously assigning it a value

echo "var2 declared as $var2"
var2=13.37

echo "var2 is still $var2"

exit 0

