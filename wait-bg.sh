#!/bin/bash

# Example of wait
# Suspend a script execution
# until all jobs in bg have terminated

ROOT_UID=0
E_NOTROOT=65
E_NOPARAMS=66

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to execute"
  exit $E_NOTROOT
fi

if [ -z "$1" ]
then
  echo "Usage: `basename $0` find-string"
  exit $E_NOPARAMS
fi

echo "Updating 'locate' database..."
echo "This may take a while"
updatedb /usr & # Must be a root

wait
# Don't run the rest of script until updatedb finished.
# You want the database updated before looking up the file name

locate $1

# In worst case, script exits,
# leaving updatedb as an orphan process

exit 0

