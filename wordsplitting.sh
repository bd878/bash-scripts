#!/bin/bash
#
# Vars without quotes splits
# the variable in parts at whitespace.

list="one two three"
for a in $list
do
  echo "$a"
done
# one
# two
# three

echo "---"
for a in "$list"
do
  echo "$a"
done
# one two three

exit 0;

