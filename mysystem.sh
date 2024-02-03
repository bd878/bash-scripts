#!/bin/bash

clear
echo "Info provided by mysystem.sh"

echo "Hello, $USER"
echo

echo "Today's date is `date`, this is week `date +"%V"`."
echo

echo "These users are currently connected:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo

echo "This is `uname -s` running on a `uname -m` processor."
echo

echo "Uptime info:"
uptime
echo

echo "End"
