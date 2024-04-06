#!/bin/bash

# Check some of the system's env variables
# This is good preventative maintenance
# If, ror example, $USER, the name of person,is not set,
# the machine will not recognize you

: ${HOSTNAME?} ${USER?} ${HOME?}
  echo
  echo "Name of the machine is $HOSTNAME"
  echo "You are $USER"
  echo "Your home dir is $HOME"
  echo
  echo "If you are reading this message"
  echo "crtical env variable have been set"
  echo
  echo
#-------------------------------------------

# The ${var?} construction can also check
# for vars set within the script

thisVar=value-of-variable
# Note, that string var may be set
# to chars disallowed in their names
: ${thisVar?}
echo "Value of this var is $thisVar"

echo; echo

: ${ZZXyDAS?"ZZXyDAS has not been set."}
# Since ZZXyDAS has not been set,
# script terminates with error

# Same result with: dummy_var=${ZZXyDAS?}
#                   dummy_var=${ZZXyDAS?"ZZXyDAS has not been set"}
#                   echo ${ZZXyDAS?} >/dev/null

# Compare these methods of checking wheter a var has been set
# with "set -u"...

echo "You will not see this message, because script already terminated"

HERE=0
exit $HERE


