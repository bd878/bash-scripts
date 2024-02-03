#!/bin/bash

# Prints output unchanged, redirects errors
# for processing by awk.

INPUTDIR="$1"

# fd 6 targets fd 1 (save output)
exec 6>&1

echo $BASHPID

# fd 1 targets awk pipe, fd 2 targets fd 1 (awk pipe)
# fd 1 targets 6 (stdout), fd 6 closed, execute ls
# (i.e. ls starts only when 6 is closed)
# children receive parent fds
sleep 10000 | ls "$INPUTDIR"/* 2>&1 >&6  6>&- \
| awk 'BEGIN { FS=":" } { print "YOU HAVE NO ACCESS TO" $2 }' 6>&- \

exec 6>&-
