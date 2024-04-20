#!/bin/bash
# listing all users on the system

PASSWORD_FILE=/etc/passwd
n=1   # user number

for name in $( awk 'BEGIN{FS=":"}{print $!}' < "$PASSWORD_FILE" )
# Field separator = :    ^^^^^^^^
# Print field separator          ^^^^^^^^^^
do
  echo "USER #$n = $name"
  let "n += 1"
done

exit $?
