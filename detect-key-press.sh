#!/bin/bash
#
# Detects key presses

key="no value yet"
while true; do
  clear
  echo "Bash extra Keys Demo. Keys to try:"
  echo
  echo "* Insert, Delete, Hemo, End, Page_Up, Page_Down"
  echo "* The four arrow keys"
  echo "* Tab, enter, escape, space key"
  echo "* Letter and number keys"
  echo
  echo "    d = show date/time"
  echo "    q = quit"
  echo "==============================="
  echo

# Convert the separate home-key to home-key_num_7
if [ "$key" = $'\x1b\x4f\x48' ]; then
  key=$'\x1b\x5b\x31\x7e'
fi

# Convert the separate end-key to end-key_num_1
if [ "$key" = $'\x1b\x4f\x46' ]; then
  key=$'\x1b\x5b\x34\x7e'
fi

case "$key" in
  $'\x1b\x5b\x32\x7e') # Insert
    echo Insert Key
  ;;
  # ...
  $'\x0a') # Enter
    echo Enter Key
  ;;
  $'\x1b') # Escape
    echo Escape Key
  ;;
  $'\x20') # Space
    echo Space Key
  ;;
  d)
    date
  ;;
  q)
    echo Time to quit...
    echo
    exit 0
  ;;
  *)
    echo You pressed: \'"$key"\'
  ;;
esac

echo
echo "==================================="

unset K1 K2 K3
read -s -N1 -p "Press a key: "
K1="$REPLY"
read -s -N2 -t 0.001
K2="$REPLY"
read -s -N1 -t 0.001
K3="$REPLY"
key="$K1$K2$K3"

done

exit $?


