#!/bin/bash

generate_list ()
{
  echo "one two three"
}

for word in $(generate_list) # lst "word" grap output of function
do
  echo "$word"
done

# one
# two
# three
