#!/bin/bash

ROOT_UID=0
E_NOTROOT=65
E_NOPARAMS=66

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root"
  exit $E_NOTROOT
fi

if [ -z "$1" ]
then
  echo "Usage: `basename $0` find-string"
  exit $E_NOPARAMS
fi

echo "Updating 'locate' database..."
echo "This may take a while"
updatedb /usr & # Must be run as root

wait
# Don't run the rest of the script until updatedb finished

locate $1

# In the worst case scenario,
# script will exit leaving 'updatedb' process an orphan

exit 0


