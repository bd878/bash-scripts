#!/bin/bash

# Cleanup version 3

LOG_DIR=/var/log
ROOT_UID=0    # Only users with $UID 0 have root privileges
LINES=50
E_XCD=86
E_NOTROOT=87

# Run as root
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script"
  exit $E_NOTROOT
fi

if [ -n "$1" ]
then
  lines=$1
else
  lines=$LINES #Default
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ] # Not in /var/log
then
  echo "Can't change to $LOG_DIR"
  exit $E_XCD
fi

# Or:
# cd /var/log || {
#   echo "Cannot change to directory" >&2
#   exit $E_XCD;
# }

tail -n $lines messages > messages > mesg.temp # Save last section og log file
mv mesg.temp messages

# cat /dev/null > messages

cat /dev/null > wtmp
echo "Log files cleaned up"

exit 0

