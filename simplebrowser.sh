#!/bin/bash

# Implements simple browser with three commands:
# - enter url
# - b to return back on previous url
# - q to quit

browser_files="/tmp/browser"
history_size=10
declare -a hist=()

# [ ! -d "$browser_files" ] && { mkdir "$browser_files"; }

cmd=""
while [[ $cmd != [qQ]* ]]; do
  cat <<HERE
Enter site url:
b - go back in history
q - quit
HERE
  read cmd
  case $cmd in
  [qQ]*)
    continue
    ;;
  [b]*)
    echo "restore..."
    ;;
  *)
    echo "You entered $cmd"
    ;;
  esac
done

exit 0

