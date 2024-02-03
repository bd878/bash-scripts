#!/bin/bash

# Initializes var with value if empty

declare COLUMNS

[ -z "${COLUMNS:-}" ] && COLUMNS=80
echo $COLUMNS

declare EMPTY
echo ${EMPTY:-"empty"} # empty
echo $EMPTY # <null>

declare TEST2

# the same as:
echo $TEST2 # empty

echo ${TEST2:="test"} # test
echo $TEST2 # test

exit 0;

