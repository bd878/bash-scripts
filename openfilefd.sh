#!/bin/bash

# Opens file and assigns fd to it.
# Creates file unless exists

exec 7<&1
exec 1> ./test_fd

echo "hi stdout"
echo "hi error" >&2

exec 1<&7
exec 7<&-

echo "hi stdout"

exit 0;

