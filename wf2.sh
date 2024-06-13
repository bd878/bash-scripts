#!/bin/bash
# word frequency analysis on a text file

# Uses "xargs' to decompose lines of text into single words

# Check for input file on command-line
ARGS=1
E_BADARGS=85
E_NOFILE=86

if [ $# -ne "$ARGS" ]
# correct number of ars passed to script?
then
  echo "Usage: `basename $0` filename"
  exit $E_BADARGS
fi

if [ ! -f "$1" ]
then
  echo "File \"$1\" does not exist"
  exit $E_NOFILE
fi


################
cat "$1" | xargs -n1 | \
# list the file, one word per line
tr A-Z a-z | \
# shift chars to lowercase
sed -e 's/\.//g' -e 's/\,//g' -e 's/ /\
/g' | \
# filter out periods and commas, and
# change space between words to linefeed
sort | uniq -c | sort -nr
# finally, remove duplicates, prefix occurences count
# and sort numerically
################

# this daoes the same job as "wf.sh",
# but this script runs more slowly (why?)

exit $?


