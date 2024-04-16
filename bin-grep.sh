#!/bin/bash

# A "grep" replacement for bin files
# Similar effect to "grep -a"

E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ]
then
  echo "Usage: `basename $0` search_string filename"
  exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
  echo "File \"$2\" does not exist."
  exit $E_NOFILE
fi

IFS=$'\012'  # IFS="\n"
for word in $( strings "$2" | grep "$1" )
# strings lists strings in binary files
# OUtput then piped to "grep", which tests for desired string
do
  echo $word
done

# same as strings "$2" | grep "$1" | tr -s "$IFS" '[\n*]'

# try $0 mem /bin/ls

exit 0

