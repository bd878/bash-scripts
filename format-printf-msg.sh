#!/bin/bash
# formatting messages using printf

var=nonexistent_directory

E_BADDIR=1

error()
{
  printf "$@" >&2
  # Formats positional params
  echo
  exit $E_BADDIR
}

cd $var || error $"Can't cd to %s." "$var"

exit 0

