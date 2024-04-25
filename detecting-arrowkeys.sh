#!/bin/bash

# =================
# Character codes
arrowup='\[A'
arrowdown='\[B'
arrowrt='\[C'
arrowleft='\[D'
insert='\[2'
delete='\[3'
# -----------------

SUCCESS=0
OTHER=65

echo -n "Press a key... "
# May need to also press ENTER if a key not listed above pressed
read -n3 key  # Read 3 characters

echo -n "$key" | grep "$arrowup" # Check if char code detected
if [ "$?" -eq $SUCCESS ]
then
  echo "Up-arrow key pressed"
  exit $SUCCESS
fi

echo -n "$key" | grep "$arrowrt"
if [ "$?" -eq $SUCCESS ]
then
  echo "Right-arrow key pressed"
  exit $SUCCESS
fi

echo -n "$key" | grep "$arrowleft"
if [ "$?" -eq $SUCCESS ]
then
  echo "Left-arrow key pressed"
  exit $SUCCESS
fi

echo -n "$key" | grep "$insert"
if [ "$?" -eq $SUCCESS ]
then
  echo "\"Insert\" key pressed"
  exit $SUCCESS
fi

echo -n "$key" | grep "$delete"
if [ "$?" -eq $SUCCESS ]
then
  echo "\"Delete\" key pressed"
  exit $SUCCESS
fi

echo " Some other key pressed"

exit $OTHER

# =================

while true
do
  read -sn1 a
  test "$a" == `echo -en "\e"` || continue
  read -sn1 a
  test "$a" == "[" || continue
  read -sn1 a
  case "$a" in
    A) echo "up";;
    B) echo "down";;
    C) echo "right";;
    D) echo "left";;
  esac
done

