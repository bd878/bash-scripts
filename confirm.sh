#!/bin/bash

# Script that requires confirmation

echo -n "Confirm [y/n]: "
read confirm

if [[ "$confirm" != "y" ]]; then
  echo "not confirmed, exit"
  exit 1
else
  echo "confirmed: $1"
  exit 0
fi

