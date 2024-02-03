#!/bin/bash

# Removes files that were last accessed over 365 days ago.
# Ignores empty dirs

USAGE="Usage: $0 dir1 dir2 dir3 ... dirN"

if (( $# == "0" )); then
  echo "$USAGE"
  exit 1
fi

while (( "$#" )); do
  if [[ $(ls "$1") == "" ]]; then
    echo "Empty dir $1, skip"
  else
    find "$1" -type f -a -atime +365 | xargs rm -i
  fi

  shift
done

exit 0;

