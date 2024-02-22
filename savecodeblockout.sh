#!/bin/bash

# Illustrates using of codeblock...
# Queries an rpm file for description,
# listing and wether it can be installed.
# Saves output to a file

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
  echo "Usage: `basename $0` rpm-file"
  exit $E_NOARGS
fi

{ # Begin code block
  echo
  echo "Archive Description:"
  rpm -qpi "$1" # Query description
  echo
  echo "Archive listing:"
  rpm -qpl "$1" # Query listing
  echo
  rpm -i --test $1 # Query whether rpm file can be installed
  if [ "$?" -eq $SUCCESS ]
  then
    echo "$1 can be installed"
  else
    echo "$q cannot be installed"
  fi
  echo # End code block.
} > "$1.test"

echo "Results of rpm test in file $1.test"

exit 0;

