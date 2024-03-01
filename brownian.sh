#!/bin/bash

#  ------
#+ This script models Brownian motion:
#  ------

PASSES=500    # Number of particle interactions/marbles
ROWS=10       # Number of "collisions"
RANGE=3       # 0 - 2 output range from $RANDOM
POS=0         # Left/right position
RANDOM=$$     # Seeds the random generator from PID

declare -a Slots
NUMSLOTS=21   # Number of slots at bottom of board

Initialize_Slots () { # Zero out all elements
  for i in $( seq $NUMSLOTS )
  do
    Slots[$i]=0
  done

  echo
}

Show_Slots () {
  echo; echo
  echo -n " "
  for i in $( seq $NUMSLOTS ) # Pretty-print array elems
  do
    printf "%3d" ${Slots[$i]}
  done

  echo # Row of slots:
  echo " |__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|"
  echo "                                ||"
  echo #  If the count within any particular slot exceeds 99,
       #+ it messes up the display.
       #  Running only 500 passes avoids this
}

Move () {             # Move one unit right/left, or stay put
  Move=$RANDOM
  let "Move %= RANGE" # Normalize into range of 0 - 2
  case "$Move" in
    0) ;;                 # Stay in place, do nothing
    1) ((POS--));;        # Left.
    2) ((POS++));;        # Right
    *) echo -n "Error ";; # Anomaly!
  esac
}

Play () {                   # Single pass
  i=0
  while [ "$i" -lt "$ROWS" ] # One event per row
  do
    Move
    ((i++));
  done

  SHIFT=11
  let "POS += $SHIFT"
  (( Slots[$POS]++ ))

  # Debug: echo -n "$POS "
}

Run () { # Outer loop
  p=0
  while [ "$p" -lt "$PASSES" ]
  do
    Play
    (( p++ ))
    POS=0
  done
}

# ------
# main()
Initialize_Slots
Run
Show_Slots
# ------

exit $?

