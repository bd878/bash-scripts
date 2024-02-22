#!/bin/bash

# Block i/o redirection
# reading files in /etc/fstab

File=/etc/fstab

{
read line1
read line2
} < $File

echo "First line in $File is:"
echo "$line"
echo
echo "Second line in $File is:"
echo "$line2"

exit 0

