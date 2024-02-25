#!/bin/bash
#
# Example of positional parameters

MINPARAMS=10

echo

echo "The name of this script is \"$0\"." # adds ./
echo "The name of this script is \"`basename $0`\"." # strips out path name

echo

if [ -n "$1" ]
then
  echo "Param #1 is $1"
fi

if [ -n "$2" ]
then
  echo "Param #2 is $2"
fi

# ... 

if [ -n "${10}" ] # params > $9 must be enclosed in {brackets}
then
  echo "Param #10 is ${10}"
fi

echo "All the command line params are: "$*""

if [ $# -lt "$MINPARAMS" ]
then
  echo
  echo "This script need at least $MINPARAMS command-line args"
fi

echo

exit 0;

