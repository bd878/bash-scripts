#!/bin/bash

VAR1="thirteen"
VAR2="13"
VAR3="Happy Birthday"

printf "%s %d %s\n" $VAR1 $VAR2 "$VAR3"

unset VAR3

echo "$VAR1 $VAR2 $VAR3"
echo

exit 0

