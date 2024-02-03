#!/bin/bash

# This program keeps your address book up to date

friends="friends"

echo "Hello, $USER. This script will register you in friends database"

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your gender and press [ENTER]: "
read -n 1 gender
echo

grep -i "$name" "$friends"

if [ $? == 0 ]; then
  echo "You are already registered, exit"
  exit 1
else
  echo -n "How old are you? "
  read age
  if [ $age -lt 25 ]; then
    echo -n "Which hair colour do you have? "
    read colour
    echo "$name $age $colour" >> "./$friends"
    echo "You are added to friends list"
  else
    echo "You are added to list"
    exit 1
  fi
fi  
