#!/bin/bash
# generate by command substitution

NUMBERS="9 7 3 8 17 35"

for number in `echo $NUMBERS`
do
  echo -n "$number "
done

echo
exit 0


