#!/bin/bash

# Echoes advice

if [[ $# -ne 1 ]]; then
  echo "Usage: fortune.sh thema"
  exit 1
fi

echo "you are doing best in $1"
exit 0

