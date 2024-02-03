#!/bin/bash

echo "daemonizing"
echo "parent:"
ps -p "$$" -o pid,ppid,pgid,sid,cmd

setsid -f ./deploy.sh

exit 0;

