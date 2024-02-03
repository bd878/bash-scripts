#!/bin/bash

var="value"

# [ $var == val* ] -- not equal!
# [ ... val* ] expands to filenames
if [[ $var == val* ]]
  then
    echo equal
else
  echo not equal
fi
