#!/bin/bash
# killing ppp to force a log-off.
# For dialup connections

# Script should be run as root

SERPORT=ttyS3
# depending on the hardware and even the kernel version,
# the modem port on your machine may be different
# /dev/ttyS1 or /dev/ttyS2

killppp="eval kill -9 `ps ax | awk '/ppp/ { print $1 }'`"

$killppp  # this var is now a command

# the following operations must be done as root

chmod 666 /dev/$SERPORT   # restore r+w perms

rm /var/lock/LCK..$SERPORT  # Remove the serial port lock file

exit $?


