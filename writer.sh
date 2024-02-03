#!/bin/bash

FL="/home/user/projects/test/bash/test.txt"

[ ! -a "$FL" ] || touch "$FL"

pwd &>> "$FL"
echo "$$" &>> "$FL"

for i in `seq 10`; do
  sleep 10;
  echo "> $i" &>> "$FL"
done

exit 0;

