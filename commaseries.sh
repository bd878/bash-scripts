#!/bin/bash

# Comma operator to link together
# a series of arithmetic operations,
# concatenate strings

let "t2 = ((a = 9, 12 / 3))"
echo $a $t2

for file in /{,usr/}bin/*calc
#             ^ Find all executable files ending in "calc"
#               in /bin and /usr/bin dirs
do
  if [ -x "$file" ]
  then
    echo $file
  fi
done

exit 0;

