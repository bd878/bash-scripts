#!/bin/bash

# Cleanup script to
# clean log files in
# /var/log.
# Run as root

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Log files cleaned up"
