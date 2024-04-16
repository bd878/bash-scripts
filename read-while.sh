#!/bin/bash
# couple read with while  to read and parse files

cat $filename |
while read line # As long as there is another line to read...
do
  #...
done

# === snippet from "sd.sh" example ===

func ()
{
  while read value
  do
    rt=$(echo "scale=$SC; $rt + $value" | bc)
    (( ct++ ))
  done

  am=$(echo "scale=$SC; $rt / $ct" | bc)

  echo $am; return $ct; # Function returns TWO values
} <"$datafile"
