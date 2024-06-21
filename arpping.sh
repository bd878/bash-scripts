#!/bin/bash

FILE=${1:-"./arp_`date +%j`.log"}

printf "output: %s\n" $FILE

exec 7<&1
exec 1> $FILE

cleanup()
{
  echo "trap"
  exec 1<&7 7<&-
  exit 1
}

trap cleanup SIGINT SIGTERM

main()
{
  for i in {1..255}
  do
    addr="192.168.88.$i"
    ping -q -c 1 $addr &>/dev/null
    if [ $? -ne 0 ]
    then
      printf "%s: not ok\n" $addr
    else
      printf "%s: ok\n" $addr
    fi
  done

  echo "done"

  exec 1<&7 7<&-
}

main &

