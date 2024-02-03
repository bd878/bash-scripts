#!/bin/bash

# Redirect input/output in function

file="./log.txt"

init()
{
  [ ! -a $file ] || touch "$file"
  exec 7<&1
  exec 1> $file
}

restore()
{
  exec 1<&7 7<&-
}

init
echo "hi"
restore
echo "bye"

