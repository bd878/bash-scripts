#!/bin/bash

# This script is called upon exit status
# given by penguin.sh

export menu="$1"
export animal="$2"

feed="./penguin.sh"

$feed $menu $animal

case $? in
1)
  echo "Guard: you'd better give me a fish"
  ;;
2)
  echo "Guard: It's because ..."
  ;;
3)
  echo "Guard: buy the food the Zoo provides"
  ;;
esac

