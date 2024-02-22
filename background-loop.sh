#!/bin/bash

for i in {1..10}
do
  echo -n "$i "
done & # Run this loop in background
       # Sometimes will execute after second loop

echo # Sometimes not displayed

for i in {11..20}
do
  echo -n "$i "
done

echo # Sometimes not displayed
