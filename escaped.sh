#!/bin/bash
#
# Escaped chars

echo "\v\v\v" # Prints \v\v\v literally
# Use -e to print escaped chars
echo -e "\v\v\v" # 4 vertical tabs

echo "QUOTATION MARK"
echo -e "\042"

# The $'\X' construct makes -e unnecessary

echo $'\n' # newline
echo $'\a' # alert (beep)

echo $'\t \042 \t' # Quote (") framed by tabs
# '\nnn' is an octal value
# '\xhhh' is a hex value

quote=$'\042'

exit 0;


