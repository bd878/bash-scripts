#!/bin/bash

# seq 10 | xargs $0

echo "Script name: $0"
total=$#

[ ! -z $1 ] && { echo "First: $1"; shift; }
[ ! -z $1 ] && { echo "Second: $1"; shift; }
[ ! -z $1 ] && { echo "Third: $1"; shift; }

i=3
while (( "$#" )); do
  echo "$i'th: $1"
  shift
  i=$(($i+1))
done
echo "Total amount of args: $total"

exit 0;
