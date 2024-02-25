#!/bin/bash
#
# Restrict a scope of a variable
# using declare keyword

foo1 ()
{
  FOO1="bar"
}

bar1 ()
{
  foo1
  echo "$FOO1" 
}

bar1 # echo bar

# ===

foo () {
  declare FOO="bar"
}

bar ()
{
  foo
  echo $FOO
}

bar # Prints nothing, cause declare makes FOO local

exit 0;


