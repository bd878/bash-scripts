#!/bin/bash
#
# Declare var readonly

declare -r var1=1
echo "var1 = $var1"

(( var1++ )) # line 4: var1: readonly variable

exit $?


