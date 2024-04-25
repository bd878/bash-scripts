#!/bin/bash

dir1=/usr/local
dir2=/var/spool

pushd $dir1
# Will do an automatic 'dirs' (list directory stack to stdout)
echo "Now in directory `pwd`." # Uses back-quoted 'pwd'

pushd $dir2
echo "Now dir `pwd`"

echo "Top entry in the DIRSTACK array is $DIRSTACK"
popd
echo "Now back in `pwd`"

popd
echo "Now back in original dir `pwd`"

exit 0

