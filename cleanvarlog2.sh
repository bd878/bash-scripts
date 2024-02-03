#!/bin/bash

# Cleanup, version 2
# Run as root

LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up"

exit
