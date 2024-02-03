#!/bin/bash

# This script does a very simple test for checking disk space

space=`df -h | grep % | grep -v Use | sort -n | awk '{print $5}' | tail -1 | cut -d '%' -f1 -`
alertvalue="80"

if [ "$space" -ge "$alertvalue" ]
  then
    echo -e "At least one of my disks if nearly full\n." | sendmail root
else
  echo -e "Disk space normal\n." | sendmail root
fi
