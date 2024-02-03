#!/bin/bash

# Creates a subdir in the current dir, where
# old files are moved.
# Might be used by cron

ARCHIVENR=`date +%Y%m%d`
DESTDIR="$PWD/archive-$ARCHIVENR"

mkdir "$DESTDIR"

# quotes to catch file names with spaces
find "$PWD" -type f -a -mtime +5 | while read -d $'\000' file; do
  fname=$(basename "$file")
  tar -cf "$file" "$DESTDIR/$fname.tar"
  echo "$file archived"
done
  

