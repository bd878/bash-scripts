#!/bin/bash

# Count to 10 in a while loop

LIMIT=10
a=1

while [ "$a" -le $LIMIT ]
do
  echo -n "$a "
  let "a += 1"
done

echo; echo

# ======================

# repeate with c-like syntax
((a = 1)) # a=1
# double parentheses permit space when setting a variable

while (( a <= LIMIT ))
do
  echo -n "$a "
  ((a += 1)) # let "a+=1"
done

echo

exit 0


