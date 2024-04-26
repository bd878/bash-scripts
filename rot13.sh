#!/bin/bash

setvar_rot_13() # "rot13" scrambling
{
  local varname=$1 varvalue=$2
  eval $varname='$(echo "$varvalue" | tr a-z n-za-m)'
}

setvar_rot_13 var "foobar"
echo $var

setvar_rot_13 var "$var"

echo $var # foobar

exit 0
