#!/bin/bash

# a strange suid file might indicate a security hole
# or even a system instrusion

directory="/usr/sbin"
permissions="+4000"  # suid root

for file in $( find "$directory" -perm "$permissions" )
do
  ls -ltF --author "$file"
done

exit 0


