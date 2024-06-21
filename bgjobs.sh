#!/bin/bash

# Show all background processes.
# process must have controlling terminal
# (tpgid != -1), and
# group leader id is not a terminal

ps -eo pid,pgid,tpgid,args | awk '$3 != -1 && $2 != $3'

exit 0
