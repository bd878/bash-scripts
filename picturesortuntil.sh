#!/bin/bash

# This script copies files from home dir to webserver dir.
# New dir is created every hour.
# If pics take too much space, the oldest are removed.

PICSDIR="/home/user/projects/test/bash/pics"
WEBDIR="/var/www/pics"

while true; do
  DISKFUL=$(df -h $WEBDIR | grep -v File | awk '{print $5}' | cut -d "%" -f1 -)

  until [[ $DISKF -ge "90" ]]; do
    DATE=`date +%Y%m%d`
    HOUR=`date +%H`
    mkdir "$WEBDIR/$DATE"

    while [[ $HOUR -ne "00" ]]; do
      DESTDIR="$WEBDIR/$DATE/$HOUR"
      mkdir "$DESTDIR"
      mv $PICSDIR/*.jpg "$DESTDIR/"
      sleep 3600
      HOUR=`date +%H`
    done

    DISKFUL=$(df -h $WEBDIR | grep -v File | awk '{print $5}' | cut -d "%" -f1 -)
  done

  TOREMOVE=$(find $WEBDIR -type d -a -mtime +30)
  for i in $TOREMOVE; do
    rm -rf "$i";
  done

done
