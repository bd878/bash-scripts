#!/bin/bash

#
# ./nc_%d.sh - listens on net host
# and pipes to given file.
# Cleans up on signal.
#

ME=`basename $0`
PORT=${1?"Usage: $ME <port> <host>"}
HOST=${2-"127.0.0.1"}
FILE=${3-"$PWD/pipe_`date +%j-%H-%m`.txt"}

[ -e $FILE ] && rm $FILE
touch $FILE
printf "$ME output to %s\n" $FILE

printf "$ME listening on %s:%s\n" $HOST $PORT  
echo "==="

exec 7<&1
exec 1> $FILE

trap cleanup SIGINT SIGTERM

cleanup()
{
  exec 1<&7 7<&-

  echo
  echo "==="
  printf "lines: %d\n" `cat $FILE|wc -l`
  printf "exit.\n"

  exit 0;
}

nc -kl $HOST $PORT

cleanup

