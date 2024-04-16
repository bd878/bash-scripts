#!/bin/bash

# list of files you are curious about

FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot
/usr/bin/fakefile
/sbin/badlocks
/sbin/ypbind"

echo

for file in $FILES
do
  if [ ! -e "$file" ] # check if file exists
  then
    echo "$file does not exist"; echo
    continue
  fi

  ls -l $file | awk '{ print $8 "   file size: " $5 }' # print 2 fields
  whatis `basename $file` # file info
  # whatis database must be set
  echo
done

exit 0


