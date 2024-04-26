#!/bin/bash

y=`eval ls -l`    # similar to y=`ls -l`
echo $y           # but linefeeds removed because "echoed" variable is unquoted
echo
echo "$y"         # linefeeds preserved when variable is quoted

echo; echo;

y=`eval df`       # similar to y=`df`
echo $y           # but linefeeds removed

# when LF's not preserved, it may make it easier to parse output

echo
echo "==="
echo

eval "`seq 3 | sed -e 's/.*/echo var&=ABCDEFGHIJ/'`"

echo
echo "==="
echo

# something useful with "eval"

version=3.4 # can we split version into major and minor
            # using one command?

echo "version = $version"
eval major=${version/./;minor=}

echo Major: $major, minor: $minor

