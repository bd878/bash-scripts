#!/bin/bash

# Invoke this script with several args,
# such as one, two three ...

E_BADARGS=05

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` arg1 arg2 etc."
  exit $E_BADARGS
fi

echo

index=1 # initialize count

echo "Listing args with \"\$*\":"
for arg in "$*" # Doesn't work properly if "$*" isn't quoted
do
  echo "Arg #$index = $arg"
  let "index += 1"
done            # $* sees all arguments as single word
echo "Entire arg list seen as single word"

echo

index=1 # reset counter

echo "Listing args with \"\$@\":"
for arg in "$@"
do
  echo "Arg #$index = $arg"
  let "index+=1"
done    # $@ sees args as separate words
echo "Arg list seen as separate words"

echo

index=1  # reset counter

echo "Listing args with \$* (unquoted):"
for arg in $*
do
  echo "Arg #$index = $arg"
  let "index+=1"
done     # Unquoated $* sees args as separate words
echo "Arg list seen as separate words"

exit 0;


