#!/bin/bash

# Switch-case select with break statements

FORTUNE="./fortune.sh"

while true; do
  echo "On which topic do you want advice?"
  cat <<HERE
1. politics
2. startrek
3. kernelnewbies
4. sports
5. bofh-excuses
6. magic
7. love
8. literature
9. drugs
10. education
HERE

  read -p "Enter your choice, 0 for exit: " choice
  echo

  case $choice in
    1)
    $FORTUNE politics
    ;;
    2)
    $FORTUNE startrek
    ;;
    3)
    $FORTUNE kernelnewbies
    ;;
    4)
    echo "Sports are a waste of time, energy and money"
    ;;
    5)
    $FORTUNE bofh-excuses
    ;;
    6)
    $FORTUNE magic
    ;;
    7)
    $FORTUNE love
    ;;
    8)
    $FORTUNE literature
    ;;
    0)
    echo "see you!"
    break
    ;;
    *)
    echo "ein anderes"
    ;;
esac
done
