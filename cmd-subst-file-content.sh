#!/bin/bash

file1=$1
file2=$2

variable1=`<$file1`     # set "variable1" to contents of "file1"
variable2=`cat $file2`  # set "variable2" to contents of "file2"
                        # This forks a new process
                        # so the line of code executes slower than the above version

echo "` <$0`" # Echoes the script itself to stdout

exit 0

