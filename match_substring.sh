#!/bin/bash

# Numerical position in string of first character in substr
# that matches.
# Near equivalent strchr() in C

string=abcABC12345abc

echo `expr index "$string" 123` # 7
                               # "1" position

echo `expr index "$string" 1c` # 3
                               # 'c' (in #3) matches before 1

exit 0


