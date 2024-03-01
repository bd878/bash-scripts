#!/bin/bash
# read -t timeout

TIMELIMIT=4

read -t $TIMELIMIT variable
# <&1 unnecessary for bash 3+, needed for bash 1.x, 2.x

echo

if [ -z "$variable" ]
then
  echo "Timed out, variable still unset"
else
  echo "variable = $variable"
fi

exit 0


