#!/bin/bash

# Example of here documents
# Performs action eventhough recuires
# confirmation

if [ $# -lt 1 ]; then
  echo "Usage: $0 package."
  exit 1
fi

"./confirm.sh" $1 << CONFIRM
y
CONFIRM

exit 0

