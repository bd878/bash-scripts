#!/bin/bash

# Makes an index of important config files.
# Puts them in a backup file and allows adding
# comment for each file.
# Shows how to alternate
# between file input and command line input.

CONFIG=/var/tmp/sysconfig.out
rm "$CONFIG" 2>/dev/null

echo "Output will be saved in $CONFIG"

# create fd 7 with same target as fd 0 (duplicate stdin "value")
exec 7<&0

# update fd 0 to target file /etc/passwd
exec < /etc/passwd

# Read the first line of /etc/passwd,
# since it targets stdin
read rootpasswd

echo "Saving root account info..."
echo "Your root account info: " >> "$CONFIG"
echo $rootpasswd >> "$CONFIG"

# restore previous stdin value, which is saved in 7.
# delete fd 7
exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment; echo $comment >> "$CONFIG"

echo "Saving hosts information..."

# hosts file without any comments
TEMP="/var/tmp/hosts.tmp"
cat /etc/hosts | grep -v "^#" > "$TEMP"

exec 7<&0
exec < "$TEMP"

read ip1 name1 alias1
read ip2 name2 alias2

echo "Your local host configuration: " >> "$CONFIG"

echo "$ip1 $name1 $alias1" >> "$CONFIG"
echo "$ip2 $name2 $alias2" >> "$CONFIG"

exec 0<&7 7<&-

echo -n "Enter comment or [ENTER] for no comment: "
read comment; echo $comment >> "$CONFIG"
rm "$TEMP"

