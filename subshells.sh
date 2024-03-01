#!/bin/bash
#
# Subshell ids

echo "\$\$= $$"
echo "BASHPID=" $BASHPID # Process ID of current bash instance

echo "\$\$ outside of subshell= $$"
echo "\$BASH_SUBSHELL outside of subshell = $BASH_SUBSHELL" # 0
echo "\$BASHPID outside of subshell = $BASHPID"

echo

( echo "\$\$ inside of subshell = $$"
  echo "\$BASH_SUBSHELL inside of subshell = $BASH_SUBSHELL" # 1
  echo "\$BASHPID inside of subshell = $BASHPID" )
  # $$ returns PID of parent process

exit $?

