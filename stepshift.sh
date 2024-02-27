#!/bin/bash
#
# Using shift to step through positional params,
# like so: shift.sh a b c 23 barndoor

until [ -z "$1" ]
do
  echo -n "$1 "
  shift # parameter remove
done

echo

exit 0;

