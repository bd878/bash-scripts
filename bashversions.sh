#!/bin/bash
#
# Output bash versions

for n in {0..5}
do
  echo "BASH_VERSION[$n] = ${BASH_VERSION[$n]}"
done

exit $?

