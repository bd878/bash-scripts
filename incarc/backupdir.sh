#!/bin/bash

# Backup given dir into /var/backups/

BACKUPDIR="/var/backups"

if [ $# -lt 1 ]; then
  echo "Usage: $0 dir"
  exit 1;
fi

mem=`df -h $BACKUPDIR | grep -v "File" | awk '{print $5}' | cut -d% -f1 -`
freemem=`df $BACKUPDIR | grep -v "File" | awk '{print $4}'`
dirmem=`du --max-depth=0 $1 | cut -f1 -`

if (( $mem > 80 )); then
  echo "*** Warning: thereis less than 80% left in $BACKUPDIR: $mem"
  echo "Still continue..."
fi

if (( $freemem < $dirmem )); then
  echo "*** Fatal: available memory < given directory memory"
  echo "Exit."
  exit 1;
fi

echo "Packing and archiving $1..."
backupfile="$1.tar"

read -p "Proceed with incremental backup:[y/N]" increment
[ ! $increment ] && echo "*** Info: full backup will be taken"
[ $increment ] && echo "*** Info: incremental backup will be taken"

exit 0;

