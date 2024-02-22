#!/bin/bash

# Parentheses group starts subshell

a=123
( a=321; echo "$a" )
echo "$a"

exit 0;


