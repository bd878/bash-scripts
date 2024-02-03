#!/bin/bash

# Outputs current month info,
# but with case-branching construct

month=`date +%m`
days=-1
isleapyear="./isleapyear.sh"

case $month in
2)
  if $isleapyear
  then days=29
  else days=28
  fi
  ;;
4|6|9|11)
  days=30
  ;;
1|3|5|7|8|10|12)
  days=31
  ;;
*)
  echo "unknown month $month, days -1"
  ;;
esac

echo "Month `date +%b` has $days days"
