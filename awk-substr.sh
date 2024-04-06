#!/bin/bash

# Manipulating strings using
# awk rather than bash facilities.
# Note different string indexing systems:
# Bash numbers first char of string 0
# Awk numbers first char of string 1

str=23skidoo1

echo ${str:2:4} # positions 3 (0-1-2), 4 characters long

# awk equivalent of ${string:pos:length} is substr(string,pos,length)
echo | awk '
{ print substr("'"${str}"'",3,4)
}
'

# piping an empty "echo" to awk gives it dummy input,
# and thus makes it unnecessary to supply a filename

echo "----"

echo | awk '
{ print index("'"${str}"'", "skid")
}
' # awk equivalent of "expr index"

exit 0



