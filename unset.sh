#!/bin/bash

variable=hello
echo "variable = $variable" # Initialized

unset variable # unset
               # same effect as: variable=
echo "(unset) variable = $variable" # $ variable is null

if [ -z "$variable" ]
then
  echo "\$variable has zero length"
fi

exit 0


