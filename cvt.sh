#!/bin/bash
#
# Converts all the MacPaint image files in a dir
# to pbm format

# Uses the macptopbm binary from netpbm package

OPERATION=macptopbm
SUFFIX=pbm    # New file suffix

if [ -n "$1" ]
then
  dir="$1"  # If dir name given as a script arg
else
  dir=$PWD  # Current work dir
fi

# Assumes all files in target dir are MacPaing image files
# with a ".mac" filename suffix

for file in $dir/*
do
  filename=${file%.*c}  # Stripg ".mac" suffix

  $OPERATION $file > "$filename.$SUFFIX"

  rm -f $file
  echo "$filename.$SUFFIX"
done

exit 0

