#!/bin/bash

# Choose random elems of an array.

Suites="Clubs
Diamonds
Hearts
Spades"

Denominations="2
3
4
5
6
7
8
9
10
Jack
Queen
King
Ace"

# Note vars spread over lines

suite=($Suites) # Read into array var
denomination=($Denominations)

num_suites=${#suite[*]} # Count elements
num_denominations=${#denomination[*]}

echo -n "${denomination[$((RANDOM%num_denominations))]} of "
echo ${suite[$((RANDOM%num_suites))]}

exit 0;


