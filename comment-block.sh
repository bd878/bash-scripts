#!/bin/bash

COMMENT_BLOCK=
# Try setting the above for
# an unpleasant surprise

if [ $COMMENT_BLOCK ]; then

Comment block --
===================
Comment line
Another comment line
===================

echo "This will not echo"

Comment blocks are error-free! Whee!

fi

echo "No more comments, please"

exit 0

