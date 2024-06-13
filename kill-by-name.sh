#!/bin/bash
# kill a process by name
# compare this script with kill-process.sh

# Warning:
# This is a fairly dangerous script.
# Running it carelessly
# can cause data loss

E_BADARGS=66

if test -z "$1"
then
  echo "Usage: `basename $0` processes_to_kill"
  exit $E_BADARGS
fi

PROCESS_NAME="$1"
ps ax | grep "$PROCESS_NAME" | awk '{print $1}' | xargs -i kill {} 2&>/dev/null
# -i is the "replace strings" option to xargs
# Can grep "$PROCESS_NAME" be replaces by pidof "$PROCESS_NAME"?

# killall has the same effect

exit $?

