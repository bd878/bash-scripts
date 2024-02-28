#!/bin/bash
#
# Exit status of bash shell

true
echo "exit status of \"true\" = $?" # 0

! true
echo "Exit status of \"! true\" = $?" # 1

# "!" needs a space between it and the command
# '!' operator invokes Bash history mechanism

true
!true # no error, just repeats previous command
ls | bogus_command
echo $? # 127

! ls | bogus_command
echo $? # 0
# ! does not change the execution of the pipe.
# only the exit status changes.
