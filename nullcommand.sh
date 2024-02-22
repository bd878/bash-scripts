#!/bin/bash

# Null command, synonym to "true"

:
echo $?
true
echo $?

: ${username=`whoami`}
# ${username=`whoami`} Gives an error
echo $username

: ${1?"Usage: $0 ARGUMENT"}

: ${HOSTNAME?} ${USER?}
# Prints error message
#+ if one or mote env vars not set

cat <<"HERE" > data.xxx
test
string
here
HERE
wc -l data.xxx
: > data.xxx # File "data.xxx" now is empty.
# Same as cat /dev/null >data.xxx
# but : > does not fork a new process, ":" is a builtin
wc -l data.xxx

rm data.xxx

not_empty ()
{
  :
} # Contains a ":" (null command)

exit 0;

