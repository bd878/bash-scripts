#!/bin/bash

variable="one two three four five"

set -- $variable
# sets pos params to the contents of "$variable"

first_param=$1
second_param=$2
shift; shift    # shift past first two pos params
# shift 2       also works
remaining_params="$*"

echo
echo "first param = $first_param"          # one
echo "second param = $second_param"        # two
echo "remaining param = $remaining_params" # three four five

echo;
echo

# Again
set -- $variable
first_param=$1
second_param=$2
echo "first param = $first_param" # one
echo "second param = $second_param" # two

exit 0



