#!/bin/bash

# Strip leading zeroes

strip_leading_zero ()
{
  shopt -s extglob
  local val=${1##+(0)} # use local var, longest matching series of 0's
  shopt -u extglob  # turn off extended globbing
  _strip_leading_zero=${val:-0}
                    # if input was 0, return 0 instead of ""
}

# another usage of how to remove Pattern parts from Var
echo `basename $PWD`
echo "${PWD##*/}"
echo
echo `basename $0`
echo $0
echo
filename=test.beta
echo "${filename##*.}"

strip_leading_zero $1
exit 0


