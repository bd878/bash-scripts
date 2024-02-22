#!/bin/bash

# Pipe passes the output of previous command
# to the input of the next one.
# This is the method of chainning commands
# together

echo ls -l | sh # same as ls -l

cat *.lst | sort | uniq
# Merges and sorts all *.lst files, deletes duplicate lines
