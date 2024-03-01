#!/bin/bash
#
# Different bash field separators

var1="a+b+c"
var2="d-e-f"
var3="g,h,i"

IFS=+
echo $var1
echo $var2
echo $var3

output_args_one_per_line()
{
  for arg
  do
    echo "[$arg]"
  done
}

IFS=:
var=":a::b:c:::"
output_args_one_per_line $var

echo

exit $?

