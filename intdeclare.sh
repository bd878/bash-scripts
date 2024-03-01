#!/bin/bash
#
# declare -i permits
# arithmetic operations without
# need for expr or let

n=6/3
echo "n = $n"  # n = 6/3

declare -i n
n=6/3
echo "n =$n"   # n = 2

exit $?


