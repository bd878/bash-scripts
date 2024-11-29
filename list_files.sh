#!/bin/bash

# Got an array of files.
# Check if given files exists
# in related directories

FILES=("./abc.sh" "$0")

for i in ${FILES[@]}; do
  if [ -e $i ]; then
    printf "%s exists\n" $i
  else
    printf "%s NOT exists\n" $i
  fi
done

exit 0

