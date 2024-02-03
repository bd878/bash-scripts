#!/bin/bash

# Prints function arguments

echo "Pos param 1 for the script is $1"
echo

test ()
{
  echo "Pos param 1 in the func is $1"
  RETURN_VALUE=$?
  echo "The exit code of the func is $RETURN_VALUE"
}

test other_param
