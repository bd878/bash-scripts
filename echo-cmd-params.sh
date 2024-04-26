#!/bin/bash

# Call this script with a few command-line params
# For example:
#     sh echo-cmd-params.sh first second thirs fourth fifth

params=$# # number of cmd params
param=1   # start at first cmd-line param

while [ "$param" -le "$params" ]
do
  echo -n "Command-line parameter "
  echo -n \$$param    # Gives only the *name* of variable
                      # $1, $2, $3
                      # why?
                      # \$ escapes the first "$"
                      # so it echoes literally,
                      # and $param dereferences "$param"
                      # ... as expected
  echo -n " = "
  eval echo \$$param  # gives the *value* of variable
                      # the "eval" forces the *evaluation*
                      # of \$$
                      # as an indirect var reference

  (( param++ ))       # on to the next
done

exit $?

