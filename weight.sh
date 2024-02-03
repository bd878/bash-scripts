#!/bin/bash

# This script prints a message about your weight

weight="$1"
height="$2"
idealweight=$[$height - 110]

if [ $weight -le $idealweight ]
then echo You should eat a bit more fat
else echo You should eat a bit more fruit
fi

