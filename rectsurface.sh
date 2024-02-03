#!/bin/bash

#
# Accepts two integer values,
# they are proportions of a rectangle.
# Calculates the surface of a rectangle
#

clear

A="$1"
B="$2"

SURFACE=$[$1*$2]
echo "Surface: $SURFACE"
echo

