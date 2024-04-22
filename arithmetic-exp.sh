#!/bin/bash
# examples of bash arithmetic expansion

z=5
z=`expr $z + 3`
# z=$(( $z + 3 ))
# z=$((z+3))

# $((EXPRESSION)) is arithmetic expansion
# Not to be confused with command substitution

# You may also use operations within double
# parentheses w/o assignment

n=0
echo "n = $n" # n = 0

(( n += 1 )) # increment
# (( $n += 1 )) -- incorrect !

let z=z+3
# let "z += 3" # Quotes permit the use of space in variable assignment
               # The "let" operator actually performs arithm evaluation
               # rather than expansion

var0=0
LIMIT=10

while [ "$var0" -lt "$LIMIT" ]
#      ^                    ^
# Spaces, because these are "test-brackets"
do
  echo -n "$var0 "  # -n supresses newline

  var0=`expr $var0 + 1` # var0=$(($var0+1))
                        # var0=$((var0 + 1))
                        # let "var0 += 1"
                        # and various other methods

done

echo

exit 0
