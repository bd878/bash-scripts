#!/bin/bash

# deletes filenames in current dir
# containing bad chars

for filename in *
do
  badname=`echo "$filename" | sed -n /[\+\{\;\"\\\=\?~\(\)\<\>\&\*\|\$]/p`
# Deletes files containing these nasties:     + { ; " \ = ? ~ ( ) < > & * | $
  rm $badname 2>/dev/null
done

find . -name "* *" -exec rm -f {} \;
# The path name of the file that _find_ finds replaces the "{}".
# The '\' ensures that the ';' is interpreted literally, as end of command.

exit 0

