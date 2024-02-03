#!/bin/bash

num=`wc -l /etc/passwd | awk '{print $1}'`

echo $num

if [ "$num" -gt "150" ]
  then
    echo "you've worked hard enough today"
fi
