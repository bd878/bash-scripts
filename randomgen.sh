#!/bin/bash

# $RANDOM returns a different random integer at each invocation
# Nominal range: 0 - 3267 (signed 16-bit)

MAXCOUNT=10
count=1

echo
echo "$MAXCOUNT random numbers:"
echo "-------------"
while [ "$count" -le "$MAXCOUNT" ]; do
  number=$RANDOM
  echo $number
  let "count += 1" # Increment count
done
echo "-------------"

RANGE=500

echo

number=$RANDOM
let "number %= $RANGE"
#
echo "Random number less than $RANGE -- $number"

echo

#  Setup a test to discard all numbers
#+ that are below that

FLOOR=200

number=0 # init
while [ "$number" -le $FLOOR ]
do
  number=$RANDOM
done
echo "Random number greater than $FLOOR -- $number"

exit 0

