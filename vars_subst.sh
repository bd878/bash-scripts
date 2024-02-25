#!/bin/bash

# Variables substitution

a=375
hello=$a
#---
# "VARIABLE =value"
# Script runs "VARIABLE" with argument "=value"
# "VARIABLE= value"
# Script runs value with env variable "VARIABLE" set to ""
# ---

echo hello # string "hello"
echo $hello # same as ${hello}

hello=
echo "\$hello (null value) = $hello"

mixed_bag=2\ ---\ Whatever
#           ^ and ^ spaces are important
echo "$mixed_bag"

uninitialized_var=
echo "uninitialized_var = $uninitialized_var"

uninitialized_var=23
unset uninitialized_var
echo "uninitialized_var = $uninitialized_var"
# still a null value

echo

exit 0
