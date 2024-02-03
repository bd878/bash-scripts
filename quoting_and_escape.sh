#!/bin/bash

# Shows where '#' starts comment
# in echo constructs

echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment
echo Here # is a comment

echo ${PATH#*:}       # Parameter substitution, not a comment
echo $(( 2#101 ))  # Base conversion, not a comment

exit 0;

