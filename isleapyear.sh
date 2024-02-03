#!/bin/bash

# This scripts checks if current year is a leap year

if [ $# -ne 1 ]; then
  echo "Usage: ./isleapyear.sh year"
  exit 1;
fi

year=`date -d "$1-01-01" +%Y`

if [ $[$year % 400] -eq "0" ]; then
  echo "y"
  exit 0;
elif [ $[$year % 4] -eq 0 ]; then
  if [ $[$year %100] -ne 0 ]; then
    echo "y"
    exit 0;
  else
    echo "n"
    exit 1;
  fi
else
  echo "n"
  exit 1;
fi
