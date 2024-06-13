#!/bin/bash
# Delete filenames in current dir containing bad chars

for filename in *
do
  badname=`echo "$filename" | sed -n /[\+\{\;\"\\\=\?~\(\)\<\>\&\*\|\$]/p`
# Deletes files containing these nasties : + { ; " \ = ? ~ ( ) < > & * | $
#
  rm $badname 2>/dev/null
done

# take care of files containing all manner of whitespace
find . -name "* *" -exec rm -f {} \;
# the path name of the file that _find_ finds replaces the "{}"
# '\' ensures that the ';' is interpreted literally as end of command

exit 0;


