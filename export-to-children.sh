#!/bin/bash

# adds up a specified column ( of numbers ) in the target file
# This uses the env to pass a script variable to `awk`
# and places te awk script in a variable

ARGS=2
E_WRONGARGS=85

if [ $# -ne "$ARGS" ] # Check for proper number of command-line args
then
  echo "USage: `basename $0` filename column-header"
  exit $E_WRONGARGS
fi

filename=$1
column_number=$2

export column_number
# export column number to environment, so it's available for retrieval

# --------------
awkscript='{ total += $ENVIRON["column_number"] }
END { print total }'
# Yes, a variable can hold an awk script
# --------------

# Now, run the awk script
awk "$awkscript" "$filename"

exit 0

