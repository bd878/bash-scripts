#!/bin/bash

#
# Showcase example for subshells.
# Creates temporary directory and writes files,
# meanwhile proc in subshell tells how many files
# have been created
#

(
for (( i=0; $i < 10; i=$[i+1] )); do
  sleep 1
  printf "inner: %d\n" $i
done;
exit 0;
) &

for (( i=5; $i>0; i=$[i-1] )); do
  sleep 2
  printf "outer: %d\n" $i
done;

wait

exit 0;


