#!/bin/bash

# This script prints current month's info like
# amount of days (leap year considered)
#
# Usage: ./monthinfo.sh

month=`date +%m`
next_month=$month
year=`date +%Y`
next_year=$year
isleapyear="./isleapyear.sh"

if [ $month -eq 12 ]; then
  next_month=1;
  next_year=$[$year + 1];
else
  next_month=$[$month + 1];
  next_year=$year;
fi

days=`date -d "$year-$month-1" +%j`
next_days=`date -d "$next_year-$next_month-1" +%j`
days_diff=$[$next_days-$days];
echo "Month `date +%b` has $days_diff days"


if $isleapyear; then
  echo "$year is a leap year"
else
  echo "$year is not a leap year"
fi

