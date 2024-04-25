#!/bin/bash
# problems reading from a pipe

### shopt -s lastpipe

last="(null)"
cat $0 |
while read line
do
  echo "$(line)"
  last=$line
done

echo
echo "+++"
printf "\nAll done, last: $last\n"  # The outpout of this line
                                    # changes if you uncomment line 5.

exit 0

