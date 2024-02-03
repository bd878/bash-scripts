#!/bin/bash

# This script copies files between dirs
# and later via scp and ssh to remote dir.
# A new directory is created every hour

PICSDIR="/home/user/pics"
WEBDIR="/var/www/pics"

while true; do # infinite loop
  DATE=`date +%Y%m%d`
  HOUR=`date +%H`
  mkdir $WEBDIR/"$DATE"

  while [ $HOUR -ne "00" ]; do
    DESTDIR=$WEBDIR/"$DATE"/"$HOUR"
    mkdir -p $DESTDIR
    mv $PICSDIR/*.jpg "$DESTDIR"/
    sleep 3600
    HOUR=`date +%H`
  done
done
