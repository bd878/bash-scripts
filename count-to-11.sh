#!/bin/bash
#
# 10 different ways to count to 11

n=1; echo -n "$n "

let "n = $n + 1"
echo -n "$n "

: $((n = $n + 1))
# otherwise, bash interprets $((...)) as a command
echo -n "$n "

(( n = n + 1 ))
echo -n "$n "

n=$((n + 1))
echo -n "$n "

: $[ n = $n + 1 ]
echo -n "$n "

n=$[ $n + 1 ]
echo -n "$n "

let "n++"

(( n++ ))

: $(( n++ ))

: $[ n++ ]
echo -n "$n "

echo

exit 0


