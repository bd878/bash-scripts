#!/bin/bash

# This script lets you present different menu to
# haustier. It will be happy when given a fish.
# This script presumed to work with feed.sh in pair

if [ "$menu" == "fish" ]; then
  if [ "$animal" == "penguin" ]
  then echo "Haustier is happy"
  elif [ "$animal" == "dolphin" ]
  then echo "Dolphin is happy"
  else echo "wrong"
  fi
else
  if [ "$animal" == "penguin" ]; then
    echo It wants fish
    exit 1
  elif [ "$animal" == "dolphin" ]; then
    echo "omnom"
    exit 2
  else
    echo "Will you read this sign?"
    exit 3
  fi
fi
