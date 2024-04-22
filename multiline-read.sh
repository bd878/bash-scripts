#!/bin/bash

echo

echo "Enter a string terminated by a \\, then press <ENTER>."
echo "Then, enter a second string (no \\ this time), and again press <ENTER>."

read var1   # The "\" suppresses newline, when reading $var1
            #     first line \
            #     second line

echo "var1 = $var1"
#     var1 = first line second line

# For each line terminated by a "\"

echo; echo

echo "Enter another string terminated by \\, then press <ENTER>"
read -r var2 # -r option causes "\" to be read literally
             # first line \

echo "var2 = $var2"
#     var2 = first line \

# Data entry terminates with the first <ENTER>

echo

exit 0


