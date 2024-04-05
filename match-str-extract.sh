#!/bin/bash
# Match substring in string
# and extract as new string

str=abcABC123ABCabc

echo `expr match "$str" '.*\([A-C][A-C][A-C][a-c]*\)'`
echo `expr $str : '.*\(....\)'`


