#!/bin/bash

# invoke this script with three command-line params,
# for example, "sh ex34.sh one two three"

echo
echo "Positional params before set \`uname -a\` :"
echo "Command-line argument #1 = $1"
echo "Command-line argument #2 = $2"
echo "Command-line argument #3 = $3"

set `uname -a` # Sets the positional params to the output
               # of the command `uname -a`

echo
echo +++
echo $_ # +++
# Flags set in script
echo $- # hB

echo "Positional params after set \`uname -a\` :"
# $1 $2 $3 etc. reinitialized to result of `uname -a`
echo "Field #1 of 'uname -a' = $1"
echo "Field #2 of 'uname -a' = $2"
echo "Field #3 of 'uname -a' = $3"
echo \#\#\#
echo $_ # ###
echo

exit 0



