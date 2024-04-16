#!/bin/bash
# while loop with multiple conditions

var1=unset
previous=$var1

while echo "previous-variable = $previous"
  echo
  previous=$var1
  [ "$var1" != end ] # Keeps track of what $var1 was previously
  # Four conditions on *while*, but only the final controls loop
  # The last exit status is the one that counts
do
  echo "Input variable #1 (end to exit) "
  read var1
  echo "variable #1 = $var1"
done

# try to figure out how this all works

exit 0


