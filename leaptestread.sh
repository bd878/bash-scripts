#!/bin/bash

# This script will tell if entered year is leap or not

echo "Type the year that you want to check (4 digits):"

read year

if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == "0") && \
  ("$year" % 100 != "0") )); then
  echo "$year is a leap year"
else
  echo "this is not a leap year"
fi
