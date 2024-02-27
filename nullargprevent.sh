#!/bin/bash
#
# Prevent positional arg
# null value

var_=$1_        # prevents error if $1 is absent
var1=${var_/_/} # strip underscore

# or check like so:
if [ -z $1 ]
then
  exit 1;
fi

# set default value:
var_default=${1:-"default"}

exit 0;


