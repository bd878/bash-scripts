#!/bin/bash
# read-novar.sh

echo

# ---------------- #
echo -n "Enter a value: "
read var
echo "\"var\" = "$var""
# everything as expected
# ---------------- #

echo

# ---------------- #
echo -n "Enter another value: "
read    # no variable supplied, therefore...
        # input to 'read' assigned to default var, $REPLY
var="$REPLY"
echo "\"var\" = "$var""
# This is equivalent to the first code block
# ---------------- #

echo
echo "============"
echo

# sometimes, you might discard the first value.
# Then, discard $REPLY var

{ # Code block
read       # line 1 to be discarded
read line2 # line 2 to be saved
 } <$0
echo "Line 2 of this script is: "
echo "$line2" # read-novar.sh
echo          # #!/bin/bash

exit 0

