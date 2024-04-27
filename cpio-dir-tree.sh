#!/bin/bash

# copying a directory tree using cpio

# Advantages:
#   Speed of copying, faster than 'tar' on pipes
#   Well suited for copying special files (pipes, etc..)

ARGS=1
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
  echo "Usage: `basename $0` source destination"
  exit $E_BADARGS
fi

source="$1"
destination="$2"

find "$source" -depth | cpio -admvp "$destination"
#
# The above works only relative to $PWD,
# full pathnames are specified

exit 0

