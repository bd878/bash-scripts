#!/bin/bash

# Converts all file names containing upper-case chars
# into lower-case names

LIST=(`ls`)
echo "list: $LIST"

for name in ${LIST[@]}; do
  if [[ "$name" != *[[:upper:]]* ]]; then
    continue
  fi

  ORIG="$name"
  NEW=`echo $name | tr 'A-Z' 'a-z'`

  mv "$ORIG" "$NEW"
  echo "new name for $ORIG is $NEW"
done

