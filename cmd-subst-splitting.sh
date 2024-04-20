#!/bin/bash
# word splitting in command substitution

COMMAND=yes

$COMMAND `echo a b`   # 2 args: a and b
$COMMAND "`echo a b`" # 1 arg: "a b"
$COMMAND `echo`       # no arg
$COMMAND "`echo`"     # one empty arg


