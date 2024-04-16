#!/bin/bash

# Invoke script w/o args

for a
do
  echo -n "$a "
done

# THe 'in list' missing, loop operates on '$@'
# (command-line argument list, including whitespace).

echo

exit 0


