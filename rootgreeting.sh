#!/bin/bash

# Greet root

if [ "`id -u`" -eq 1000 ]; then
  PS1="\[\033[96m\]Danger!! root is doing stuff in \w: \[\033[0m\]"
fi

