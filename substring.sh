#!/bin/bash

# Extract substring from strring at position

str=abcABC123ABCabc

echo ${str:0}  # whole string
echo ${str:1}
echo ${str:7}

echo ${str:7:3} # 23A
                # three chars of substr

# Is it possible to index from the right end?

echo $str:-4} # defaults to no, however...

echo ${str:(-4)}  # Cabc
echo ${str: -4}   # Cabc

exit 0;


