#!/bin/bash

set -e

echo "must not exit"
echo
set +e
shopt -p login_shell
printf "is login shell: %d\n" $?
set -e

echo "must exit"
shopt -p login_shell
printf "is login shell: %d\n" $?

echo "must not execute!"

exit 0

