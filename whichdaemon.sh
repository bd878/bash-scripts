#!/bin/bash

# Checks if init and httpd are running
# Reports if true

ps -p 1 -o cmd= | grep init &>/dev/null
if [ $? -eq 0 ]; then
  echo "init is running"
else
  echo "no init"
fi

ps -C httpd &>/dev/null
if [ $? -eq 0 ]; then
  echo "httpd is runing"
else
  echo "no httpd"
fi

exit 0;

