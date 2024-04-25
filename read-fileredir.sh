#!/bin/bash
# using read with file redirection

file=""

read var1 <file
echo "var1 = $var1"
# var1 set to the entier first line of the input file

read var2 var3 <file
echo "var2 = $var2  var3 = $var3"
# Non-intuitive behaviour of read here
# 1. Rewinds back to the beginning of input file
# 2. Each var is now set to a corresponding string,
#    separated by whitespace, rather than to an entire line of text
# 3. The final variable gets the remainder of the line
# 4. If there are more variables to be set,
#    then the excess variables remain empty

echo "---"

# How to resolve the above problem with a loop:
while read line
do
  echo "$line"
done <file

echo "---"

# Use $IFS to split a line of input
# to "read", if do not want default whitespace

echo "List of all users:"
OIFS=$IFS; IFS=:    # /etc/passwd uses ":" for field separator
while read name passwd uid gid fullname ignore
do
  echo "$name {$fullname)"
done </etc/passwd   # I/O redirection
IFS=$OIFS   # Restore original $IFS


