#!/bin/bash
# embedding a linefeed

echo "Why doesn't the string \n split on two lines?"

echo $"A line of text containing
a linefeed."
# Prints as two distinct lines
# Is the "$" variable prefix really necessary?

echo

echo "This string splits
on two lines."
# No, "$" is not needed

echo
echo "-----------"
echo

echo -n $"Another line of text
with a linefeed"
# Prints as two distinct lines

echo
echo "-----------"
echo

# But the following doesn't work as expected
# Why not? Assignment to a variable
string1=$"Yet another line
of text containing
a linefeed"

echo $string1

# bash "echo" builting
# is not similar to /bin/echo

