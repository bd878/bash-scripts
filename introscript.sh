#!/bin/bash

# This scripts prints time and date,
# lists all logged-in users and
# gives uptime.
# Saves info in logfile

if [ -z "$1" ];
then
  echo "Usage: $0 logfile";
  exit 1;
fi

FILE="$1"

[[ ! -e "$FILE" ]] && touch "$FILE";

if [ ! -w "$FILE" ];
then
  echo "File $FILE not writable"
  exit 1;
fi

exec 7<&1
exec 1> $FILE

echo "Current time and date:"
date "+%H:%M %F"
echo

echo "Logged-in users:"
w
echo

echo "Uptime:"
uptime -p

exec 1<&7 7<&-

exit 0;

