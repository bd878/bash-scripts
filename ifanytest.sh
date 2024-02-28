#!/bin/bash
#
# ...if can test any command,
# not just conditinos in brackets.

if cmp "$1" "$2" &>/dev/null
then echo "Files $1 and $2 are identical."
else echo "Files $1 and $2 differ"
fi

# Very useful if-grep construct:
if grep -q 'bash' "$1"
  then echo "File contains at least one occurence of bash"
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
then
  echo "$letter_sequence found in $word"
else
  echo "$letter_sequence not found in $word"
fi

exit $?

