#!/bin/bash
# list symbolic links in a directory

directory=${1-`pwd`}

echo "symbolic links in dir \"$directory\""

for file in "$( find $directory -type l )" # -type l = symbolic links
do
  echo "$file"
done | sort

exit 0

# ------------------
# alternative

OUTFILE=symlinks.list # save-file

OLDIFS=$IFS
IFS='' # Null IFS means no word breaks
for file in $( find $directory -type l )
do
  echo $file
done | sort >> "$OUTFILE"

exit 0

