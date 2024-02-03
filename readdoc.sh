#!/bin/bash

# Shows how to read heredoc
# into variable

# set -o errexit (== set -e) exits shell
# on read termination

# -r - blackslash is part of the line
read -r -d '' VAR <<'EOF' 
abc'asdf"\n
$(no execute)\n
foo"bar"'
EOF

echo -e "$VAR"

exit 0;

