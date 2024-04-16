#!/bin/bash

# For-loop construct simple example

for planet in Mercyry Venus Earth Mars Jupiter Saturn Uranus Neptuine Pluto
# each planet on a separate line
do
  echo $planet
done

# Associate the name of each planet with its distance
for planet in "Mercury 36" "Venus 67" "Eart 93" "Mars 142" "Jupiter 483"
do
  set -- $planet  # parses variable "planet"
                  # "--" prevents nasty suprises if $planet is null or
                  # begins with a dash.

  echo "$1    $2,000,000 miles from the sun"
  # ------two tabs-- concatenate zeroes onto parameter $2
done

exit 0;


