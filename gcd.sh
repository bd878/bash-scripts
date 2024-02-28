#!/bin/bash
#
# Greates common divisor.
# Uses Euclid's algorithm

# Successive division.
# In each pass,
#   dividend <--- divisor
#   divisor  <--- remainder
# until remainder = 0
# gcd = dividend, on the final pass

ARGS=2
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
  echo "Usage: `basename $0` first-number second-number"
  exit $E_BADARGS
fi

gcd ()
{
  dividend=$1
  divisor=$2  # It doesn't matter which of the two ints are larger
              # Why not?

  remainder=1 # Vars should be initialized

  until [ "$remainder" -eq 0 ]
  do
    let "remainder = $dividend % $divisor"
    dividend=$divisor # Repeat with 2 smallest numbers
    divisor=$remainder
  done                # Euclid's algorithm
}                     # Last $dividend is the gcd

gcd $1 $2

echo; echo "GCD of $1 and $2 = $dividend"; echo

exit 0

