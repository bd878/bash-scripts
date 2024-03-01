#!/bin/bash
#
# The number of seconds the script has been running

TIME_LIMIT=10
INTERVAL=1

echo
echo "Hit Ctrl-C to exit before $TIME_LIMIT seconds"
echo

while [ "$SECONDS" -le "$TIME_LIMIT" ]
do # $SECONDS is an internal shell variable
  if [ "$SECONDS" -eq 1 ]
  then
    units=second
  else
    units=seconds
  fi

  echo "This script has been running $SECONDS $units."
  sleep $INTERVAL
done

echo -e "\a" # Beep!

exit 0


