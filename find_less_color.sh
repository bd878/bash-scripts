#!/bin/bash

#
# Searches erlang files in nested directories,
# that contains receive clause, and
# keeps colouring
#

find ./ -iname "*.erl"|xargs grep --color=always -in rec[ie][ei]ve|less -R

exit 0;

