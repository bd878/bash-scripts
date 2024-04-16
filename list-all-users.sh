#!/bin/bash

PASSWORD_FILE=/etc/passwd
n=1           # user number

for name in $( awk 'BEGIN{FS=":"}{print $1}' < "$PASSWORD_FILE" )
# get input from /etc/passwd
do
  echo "USER #$n = $name"
  let "n += 1"
done

exit $?

# Is it possible, that ordinary user read
# /etc/passwd file?


