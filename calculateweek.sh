#!/bin/bash

# Calculate the week number

WEEKOFFSET=$[ $(date +"%V") % 2 ]

# Test if we have a remainder. If not, this is an even week
# Else, do nothing

if [ $WEEKOFFSET -eq "0" ]; then
  echo "Sunday evening"
fi
