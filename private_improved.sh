#!/bin/bash

# Makes private selected files in
# this directory

echo "This script can make any of the files in this directory private"
echo "Enter the number of the file you want to protect:"

PS3="Your choice: "
QUIT="QUIT THIS PROFRAM"
touch "$QUIT"

select FILENAME in *;
do
  case $FILENAME in
    "$QUIT")
      echo "Exiting."
      break
      ;;
    *)
      echo "You picked $FILENAME ($REPLY)"
      chmod go-rwx "$FILENAME"
      ;;
  esac
done

rm "$QUIT"

exit 0;

