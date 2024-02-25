#!/bin/bash
#
# This example shows
# that space for environment variables
# is limited

eval "`seq 10000 | sed -e 's/.*/export var&=ZZZZZ/'`"
du # error: argument list is too long

exit 0;


