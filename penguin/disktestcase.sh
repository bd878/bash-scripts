#!/bin/bash

# This script does a disk space checking with case
# statements

space=`df -h | awk '{print $5}' | grep -v Use | grep % | sort -n | tail -1 | cut -d "%" -f1 -`

case $space in
[1-6]*)
  Message="All is quiet"
  ;;
[7-8]*)
  Message="Start thinking about cleaning out some stuff"
  ;;
9[1-8]*)
  Message="Better hurry with new disk. One partition is $space % full"
  ;;
*)
  Message="It seems i run with non existent amount of disk space"
  ;;
esac

echo $Message
