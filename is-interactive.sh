#!/bin/bash
# Tests if script is in interactive mode

case $- in
  *i*)
    echo "interactive"
  ;;
  *)
    echo "non-interactive"
  ;;
esac

if [ -z $PS1 ] # no prompt?
then echo "non-interactive"
else echo "interactive"
fi

exit 0


