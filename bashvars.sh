#!/bin/bash

export VAR1="thirteen"
export VAR2="13"
VAR3="Happy Birthday"

printf "%d %s %s\n" $VAR2 $VAR1 "$VAR3"

unset VAR3

echo $VAR2 $VAR1 $VAR3
echo

set | grep VAR*

