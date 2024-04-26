#!/bin/bash
# reverse positional params

set a\ b c d\ e;
#     ^      ^   Spaces escaped
#       ^ ^      Spaces not escaped
OIFS=$IFS; IFS=:;
#                 Saving old IFS and setting new one

echo

until [ $# -eq 0 ]
do
  echo "### k0 = "$k""  # Before
  k=$1:$k;              # Append each pos param to loop var

  echo "### k = "$k"" # After
  echo
  shift;
done

set $k  # Set new pos params
echo -
echo $# # Count of positional params
echo -
echo

for i # Omitting the "in list" sets the variable -- i --
      # to the pos params
do
  echo $i # display new pos params
done

IFS=$OIFS # Restore IFS

exit 0

