#!/bin/bash

# Calculate the average of a series of numbers

SCORE="0"
AVERAGE="0"
SUM="0"
NUM="0"

while true; do

  read -p "Enter your score [0-100%] ('q' for quit): " SCORE;

  if (("$SCORE" < "0")) || (("$SCORE" > "100")); then
    echo "Be serious. Try again"
  elif [ "$SCORE" == "q" ]; then
    echo "Average rating: $AVERAGE%"
    break
  else
    SUM=$(($SUM + $SCORE))
    NUM=$(($NUM + 1))
    AVERAGE=$(($SUM / $NUM))
  fi
done

echo "Exiting."

