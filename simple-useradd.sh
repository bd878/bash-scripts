#!/bin/bash

# Adds local user to the system

if [ $# -ne 1 ]; then
  echo "Usage: simple-useradd.sh user"
  exit 1
fi
