#!/bin/bash

declare -a colors
# All subsequent commands will treat
# "colors" as an array

echo "Enter you favourite colors (separated by a space)"

read -a colors  # Enter at least 3 colors
# special option to 'read' command
# allowing assignment of elements in an array

echo

element_count=${#colors[@]}

index=0

while [ "$index" -lt "$element_count" ]
do  # list all elements in the array
  echo ${colors[$index]}
  let "index = $index + 1"
  # or:
  #   ((index++))
done

# Each array elem listed on a separate line:
# echo -n "${colors[$index]} "

echo

# Again, list all elements:
# echo ${colors[@]}

echo

# "unset" command deletes elements of an array, or entire array
unset colors[1]

echo ${colors[@]}

unset colors

echo; echo -n "Colors gone"
echo ${colors[@]}

exit 0


