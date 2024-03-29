#!/bin/bash
#
# View gzipped files with more filter

E_NOARGS=85
E_NOTFOUND=86
E_NOTGZIP=87

if [ $# -eq 0 ] # same as if [ -z "$1" ]
# $1 can exist, but be empty: zmore "" arg2 arg3
then
  echo "Usage: `basename $0` filename" >&2
  exit $E_NOARGS
fi

filename=$1

if [ ! -f "$filename" ] # Quoting $filename allows for possible spaces
then
  echo "File $filename not found!" >&2 # Error message to stderr
  exit $E_NOTFOUND
fi

if [ ${filename##*.} != "gz" ]
# Using bracket in var substitution
then
  echo "File $1 is not a gzipped file!"
  exit $E_NOTGZIP
fi

zcat $1 | more

exit $?

