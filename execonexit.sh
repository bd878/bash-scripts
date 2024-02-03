#!/bin/bash

# Execute command on shell exit using traps

LOCKFILE=/var/lock/db.lock

[ -f $LOCKFILE ] && exit 0

# Remove lock upon exit

trap "{ rm -f $LOCKFILE ; exit 255 ; }" EXIT

touch $LOCKFILE
exit 0

