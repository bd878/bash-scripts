#!/bin/bash

# Variables mutations inside code block
# are visible outside.
# 'local' is allowed

{
  local a; # local can only be used in a function
  a=123;
  echo "$a";
}

a=123
{ a=321; }
echo "a = $a" # a = 321

exit 0
