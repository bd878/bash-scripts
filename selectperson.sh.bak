#!/bin/bash

# Select new person from the list each week

# Check that bash supports arrays
wholist[0]='test' || echo 'Fail: arrays are not supported in
this version of bash.' && exit 2;

# List of candidates
wholist=(
  'Bob Smith <bob@example.com>'
)
declare -i count=${#wholist[*]}

# Calculate which turn it is
week=`date '+%W'`
week=${week#0} # Remove possible leading zero

let "index = $week % $count"

email=${wholist[index]}
echo $email

exit 0;

