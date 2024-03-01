#!/bin/bash
#
# Am i root or not

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]
then
  echo "You are root"
else
  echo "Ordinary user"
fi

exit 0


