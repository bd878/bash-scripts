#!/bin/bash
# breaking out of loops

# break N breaks out of N level loops

for outerloop in 1 2 3 4 5
do
  echo -n "Group $outerloop: "

  for innerloop in 1 2 3 4 5
  do
    echo -n "$innerloop "

    if [ "$innerloop" -eq 3 ]
    then
      break #Try break 2
    fi
  done
done

echo

exit 0

