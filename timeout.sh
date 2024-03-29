#!/bin/bash
# Timed input

INTERVAL=5

timedout_read()
{
  timeout=$1
  varname=$2
  old_tty_settings=`stty -g`
  stty -icanon min 0 time ${timeout}0
  eval read $varname
  stty "$old_tty_settings"
}

echo; echo -n "What is your name? Quick! "
timedout_read $INTERVAL your_name

# Maximum timeout depends on terminal.
# (it is often 25 seconds)

echo

if [ ! -z "$your_name" ]
then
  echo "Your name is $your_name."
else
  echo "Timed out"
fi

echo

exit 0


