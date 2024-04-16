#!/bin/bash
# function call in a condition

t=0

condition ()
{
  ((t++))

  if [ $t -lt 5 ]
  then
    return 0
  else
    return 1
  fi
}

while condition
#
#     Function call
#
do
  echo "Still going: t = $t"
done

