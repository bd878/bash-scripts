#!/bin/bash

# Sourcing file using '.'
# This file must be invoked with bash,
# not sh

set +o errexit

dataFile="${1-"tmp_`date +%N`"}"

if [ ! -e "$dataFile" ]; then
echo "$dataFile generated"
cat <<'HERE' > "$dataFile"
variable1=10
variable3=15

message1="File 1 message"
message2="File 2 message"

print_message()
{
  [[ -z "$1" ]] && { echo "Usage: $0 $1"; return 1; }
  until [ -z "$1" ]
  do
    echo -n "$1"
    echo -n " "
    shift
  done

  echo

  return 0
}
HERE
else
  echo -e "$dataFile exists\nskipping"
fi

. "$dataFile"
# Same effect as "source $dataFile"

echo "variable1 (from dataFile) = $variable1"
echo "variable3 (from dataFile) = $variable3"

echo "message1 (from dataFile) is \"$message1\""
#                                 Escaped quotes
echo "message2 (from dataFile) is \"$message2\""

print_message This is the message-print func in dataFile

exit 0;

