#!/bin/bash

# Assigns stdout to a file.
# Reassigns back at the end

OUT="./out.txt"

exec 7<&1
exec 1> $OUT

echo "test"
echo "test stdout" >&7

exec 1<&7 7<&-
echo "test restored"
# echo "NOT WORK" >&7

exit 0
