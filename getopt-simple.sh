#!/bin/bash
# Emulate getopt

getopt_simple()
{
  echo "getopt_simple()"
  echo "Params are '$*'"
  until [ -z "$1" ]
  do
    echo "Processing param of: '$1'"
    if [ ${1:0:1} = '/' ]
    then
      tmp=${1:1}  # Strip off leading '/'
      param=${tmp%%=*}  # Extract name
      value=${tmp##*=}  # Extract value
      echo "param: '$param', value: '$value'"
      eval $param=$value
    fi
    shift
  done
}

# Pass all options to getopt_simple
getopt_simple $*

echo "test is '$test'"
echo "test2 is '$test2'"

exit 0


