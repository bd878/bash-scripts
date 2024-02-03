#!/bin/bash

# Semicolon permits putting two or more command
# on the same line

echo hello; echo there # two commands on same line
                       # thanks to ';'

filename="$1"

if [ -x "$filename" ]; then
#+
  echo "File $filename exists."; cp $filename $filename.bak
                              # ^ space is important
else
  echo "File $filename not found."; touch $filename
fi; echo "File test complete."

exit 0;

