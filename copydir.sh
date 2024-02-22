#!/bin/bash

# Copy (verbosly) all files in current dir
# to directory specified on command-lnie.

E_NOARGS=85

if [ -z "$1" ] # Exit unless no arguments
then
  echo "Usage: `basename $0` directory-to-copy-to"
  exit $E_NOARGS
fi

ls . | xargs -i -t cp ./{} $1

# -t is "verbose"
# -i is "replace strings"
# {} is a placeholder for output text

# list the files in current directory
# pass the output of "ls" as args to "xargs"
# then copy (cp) args ({}) to new dir $1

# Result is the exact equivalent of
#   cp * $1
# unless any of the filenames has embedded "whitespace" chars

exit 0

