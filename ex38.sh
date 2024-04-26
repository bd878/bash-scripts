#!/bin/bash
# must be executed with bash ex38.sh, not sh ex38.sh !

. data-file # load a data file
# same effect as "source data-file", but more portable

# let's reference some data from that file

echo "variable1 (from data-file) = $variable1"
echo "variable2 (from data-file) = $variable3"

let "sum = $variable2 + $variable4"
echo "sum of variable2 + variable4 (from data-file) = $sum"
echo "message1 (from data-file) is \"$message\""
#                                  Escaped quotes
echo "message2 (from data-file) is \"$message2\""

print_message This is the message-print function in the data-file

exit $?

