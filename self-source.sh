#!/bin/bash
# a script sourcing itself "recursively"

MAXPASSCNT=100  # maximum number of execution passes

echo -n "$pass_count "
# $pass_count still uninitialized

let "pass_count += 1"

while [ "$pass_count" -ln $MAXPASSCNT ]
do
  . $0 # Script "sources" itself, rather than calling itself
       # ./$0 doesn't work here, why?
done

# the script effectively "expands" itself, i.e.
# generates a new section of code

echo

exit 0  # The net effect is counting from 1 to 100

