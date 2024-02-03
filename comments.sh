#!/bin/bash

# This line is comment

echo "A comment will follow" # Comment here
#                           ^ Whitespace is important

  # A tab precedes this comment

startfile=$(
cat <<'HERE'
#!/bin/bash
abc'sdfg"
.`test string`
b_amts
HERE
)

initial=( `echo "$startfile" | cat - | sed -e '/#/d' | tr -d '\n' |\
# Delete lines containing '#' comment character
          sed -e 's/\./\. /g' -e 's/_/_ /g'` )

echo -e "$initial"

exit 0;

