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

exit 0;

