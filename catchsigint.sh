#!/bin/bash

# Catch sigint signal, sent from keyboard

trap "echo Booh!" SIGINT SIGTERM
echo "pid is $$"

while :
do
  sleep 60
done

exit 0;

