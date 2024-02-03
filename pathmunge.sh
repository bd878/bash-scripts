#!/bin/bash

# Takes pathname, adds to $PATH, if not there

pathmunge ()
{
  if ! echo $PATH | /bin/egrep -q "(:|^)$1($|:)"; then
    if [ "$2" == "after" ]; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}

if [ `id -u` = 0 ]; then
  pathmunge /sbin
  pathmunge /usr/sbin
  pathmunge /usr/local/sbin
fi

pathmunge /usr/X11R6/bin after

unset pathmunge
  
