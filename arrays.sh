#!/bin/bash

# Declare arrays

ARRAY=(one two three)

# echo values
echo ${ARRAY[*]}
# ==
echo ${ARRAY[@]}

ARRAY[3]=four
echo ${ARRAY[*]}

unset ARRAY[1]
echo ${ARRAY[*]}

unset ARRAY
echo ${ARRAY[*]} # no output

exit 0;

