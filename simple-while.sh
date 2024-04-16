#!/bin/bash
# simple while loop

var0=0
LIMIT=10

while [ "$var0" -lt "$LIMIT" ]
#
# Spaces, because these are "test-brackets"
do
  echo -n "$var0 "  # -n suppresses newline
  var0=`expr $var0 + 1` # var0=$(($var0+1)) also works
                        # var0=$((var0+1))
                        # let "$var0 ++ 1"
                        # ... and various other methods
done

echo

echo

while [ "$var1" != "end" ] # equivalent to:
                           # while test "$var1" != "end"
do
  echo "Input var #1 (end to exit) "
  read var1 
  echo "variable #1 = $var1"
  # If input is `end`, echoes it here.
  # Does not test for termination condition until top of loop
  echo
done

exit 0


