#!/bin/bash
# file with data for ex38.sh script
# to be sourced.

# initialize some variables

variable1=23
variable2=474
variable3=5
variable4=97

message1="Greetings from *** line $LINENO *** of the data file!"
message2="Enought for now. Goodbye"

print_message()
{ # Echoes any message passed to it

  if [ -z "$1" ]
  then
    return 1  # Error, if arg missing
  fi

  echo

  until [ -z "$1" ]
  do                # step through args passed to function 
    echo -n "$1"    # echo args one at a time
    echo -n "  "    # insert spaces between words
    shift           # next one
  done

  echo

  return 0
}

