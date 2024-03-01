#!/bin/bash
#
# Echo command line number

# *** DEBUG DEBUG BLOCK ***
last_cmd_arg=$_

echo "At line num. $LINENO, var \"v1\" = $v1"
echo "Last command arg processed = $last_cmd_arg"
# *** END DEBUG BLOCK ***

exit $?


