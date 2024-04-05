#!/bin/bash
#
# Inserting a blank line between paragraphs in a text file
# Usage: $0 <FILENAME

MINLEN=60   # Change this value? It's a judgment call
# Assume lines shorter than $MINLEN chars ending in a period
# terminate a paragraph

while read line # for as many lines as the input file has
do
  echo "$line"  # output the line itseld

  len=${#line}
  if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]$ ]]
    then echo # Add a blank line immediately
  fi
done

exit



