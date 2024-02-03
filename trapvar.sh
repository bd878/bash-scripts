#!/bin/bash

# Trap variable changes

declare -t VAR="val"
trap "echo VAR = $VAR" DEBUG

exit 0

