#!/bin/bash

# Declare variables with different
# restrictions (on values, operations, behaviour)

# int variable
declare -i -t VARIABLE=12
# readonly
declare -r RONLY 
# string
OTHERVAR=blah
# arr
declare -a ARRAY
ARRAY[5]="test"

declare -t VARIABLE

echo "VARIABLE = $VARIABLE";
echo "RONLY = $RONLY";

VARIABLE=13
echo "VARIABLE 2. = $VARIABLE";
# ARRVAR=test # error
echo "RONLY 2. = $RONLY";

declare -p VARIABLE
declare -p RONLY 
declare -p OTHERVAR
declare -p ARRAY

# ...more on declare
declare -r var1=1
echo "var1 = $var1" # var1 = 1

(( var1++ ))        # error: var1: readonly variable

# typing variable means classify and restrict
# its properties

declare -i number
# will treat subsequent occurrences of "number" as an integer

number=3
echo "Number = $number" # Number = 3

number=three
echo "Number = $number" # Number = 0
# Evaluate string "three" as an integer

declare -f function_name # lists just the function named

declare -f # list all functions previously defined in that script

declare -x var3=373 # export var3 outside current script environment

func1 ()
{
  echo This is a function
}

declare -f

echo

exit 0;

