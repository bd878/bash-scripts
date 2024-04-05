#!/bin/bash
# Substring removal

str=abcABC123ABCabc

echo ${str#a*C} # strip out shortest match between a and C
echo ${str##a*C} # strip out longest match between a and C

# You can parametrize the substrs

X='a*C'

echo ${str#$X}
echo ${str##$X}

