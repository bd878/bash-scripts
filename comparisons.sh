#!/bin/bash
#
# Arithmetic and string comparisons

a=4
b=5

# "a" and "b" can be treated either as integers or strings.
# There is some blurring difference,
# since Bash variables are not strongly typed

echo 

if [ "$a" -ne "$b" ]
then
  echo "$a is not equal $b"
  echo "(arithmetic comparison)"
fi

echo

if [ "$a" != "$b" ]
then
  echo "$a is not equal to $b"
  echo "(string comparison)"
fi

echo 

exit 0;

