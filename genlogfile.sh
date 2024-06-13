#!/bin/bash
# generate a log file in current dir
# from the tail end of /var/log/messages

# /var/log/messages must be world readable

LINES=5

( date; uname -a ) >>logfile
# Time and machine name
echo ------------------ >>logfile
tail -n $LINES /var/log/messages | xargs | fmt -s >>logfile
echo >>logfile
echo >>logfile

exit 0;


