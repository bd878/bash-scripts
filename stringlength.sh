#!/bin/bash

# String length operator

string="abcdefghijklmnopABCDEFG"
echo ${#string}
echo `expr length $string`
echo `expr "$string"`

exit 0;


