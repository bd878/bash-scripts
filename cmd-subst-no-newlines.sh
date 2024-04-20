#!/bin/bash
# even when there is no word splitting
# , cmd substitution can remove trailing newlines

mkdir 'dir with trailing lines
'

cd 'dir with trailing lines
'

cd "`pwd`" # Error msg

cd "$PWD"

old_tty_setting=$(stty -g) # Save old terminal setting.
echo "Hit a key "
stty -icanon -echo         # Disable "canonical" mode for terminal
                           # Also, disable *local* echo
key=$(dd bs=q count=1 2> /dev/null) # Using 'dd' to get a keypress
stty "$old_tty_setting"    # Restore old setting.
echo "You hit ${#key} key" # ${#variable} = number of chars in $variable

exit 0;

