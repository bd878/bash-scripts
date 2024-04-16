#!/bin/bash

echo

for file in *
#           ^ Bash expands filename
do
  ls -l "$file"  # lists all files in $PWD
  # wild card does not match dot-files

  # IF the pattern matches no file,
  # it is expanded to itself.
  # To prevent this, set nullglob option
  #   (shopt -s nullglob)
done

echo; echo

for file in [jx]*
do
  rm -f $file # Removes only files beginning with "j" or "x" in $PWD
  echo "Removed file \"$file\"".
done

echo

exit 0


