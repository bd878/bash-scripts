#!/bin/bash

LOG=$0.log

COMMAND1="sleep 100"

echo "Logging PIDs background commands for script: $0" >> "$LOG"
# So they can be monitored and killed as necessary
echo >> "$LOG"

# Logging commands

echo -n "PID of \"$COMMAND1\": " >> "$LOG"
${COMMAND1} &
echo $! >> "$LOG"
# PID of "sleep 100": 1506

exit 0;

