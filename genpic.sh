#!/bin/bash

# Generates a file every 5 minutes

while true; do
  touch pic-`date +%s`.jpg
  sleep 300
done

