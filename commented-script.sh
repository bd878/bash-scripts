#!/bin/bash -v

# Clears console and outputs
# currently logged users.
# Sets two environment variables
# $COLOUR and $VALUE

clear

echo "Script starts"

echo "Hi, $USER!"
echo

echo "Fetching connected users...:"
echo
set -x
w
set +x
echo

echo "Set two variables."
COLOUR="black"
VALUE="9"
echo "String: $COLOUR" # Output $COLOR var
echo "Number: $VALUE" # Output $VALUE var
echo

echo "Exit."
echo
