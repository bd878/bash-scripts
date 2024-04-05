#!/bin/bash

# Generate an 8-char random string

if [ -n "$1" ] # If cmd-line arg present
then
  str0="$1"
else           # use PID of script as start-str
  str0="$$"
fi

POS=2 # Starting from pos 2 in the str
LEN=8 # Extract eight chars

str=$( echo "$str0" | md5sum | md5sum )
# Double scramble
# by piping and repiping to mt5sum

randstr="${str:$POS:$LEN}"
# could parametrize

echo "$randstr"

exit $?


