#!/bin/bash
# testing for command-line params

E_PARAM=1
E_CONFFILE=2

case "$1" in
  "") echo "Usage: ${0##*/} <filename>"; exit $E_PARAM;;
                            # No command-line params
                            # or first param empty.
# Note that ${0##*/} is ${var##pattern} param substitution

  -*) FILENAME=./$1;; # If filename passed as arg ($1)
                      # starts with a dash
                      # replace it with ./$1
  *) FILENAME=$1;;    # Otherwise $1
esac

# More elaborate example
while [ $# -gt 0 ]; do  # Until run out of params
  case "$1" in
    -d|--debug)
      # "-d" or "--debug" param?
      DEBUG=1
      ;;
    -c|--conf)
      CONFFILE="$2"
      shift
      if [ ! -f $CONFFILE ]; then
        echo "Error: Supplied file doesn't exist!"
        exit $E_CONFFILE # File not found error
      fi
      ;;
  esac
  shift # Check next set of params
done

# Using command substitution
case $( arch ) in # $( arch ) returns machine architecture
                  # equivalent to `uname -m`
  i386 ) echo "80836";;
  i486 ) echo "80486";;
  i586 ) echo "Pentium-based";;
  i686 ) echo "Pentium2+";;
  *    ) echo "Other type of machine";;
esac

exit 0

