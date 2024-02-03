#!/bin/bash

# Checks if user allowed to drink bier.
# It should be older than 16.
# If user is yonger, script says how many
# years left

echo -n "Enter your age: "
read age
gap=$(($age - 16))

if (( $gap < 0 )); then
  echo "you have to wait $(($gap * -1)) years\
 to drink a bier"
else
  echo "your bier, please"
fi

if (( $age > 17 )); then
  drunk=$(( ($age - 17) * 100 ))
  echo "*** as an average person,\
 you've already drunk $drunk liters ***"
fi

exit 0

