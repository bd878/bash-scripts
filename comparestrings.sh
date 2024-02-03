#!/bin/bash

if [ "$(whoami)" != 'root' ]; then
  echo "You have no permissions to run $0 as non-root user"
fi

(
  echo "inside ()";
  echo '$$='$$;
  echo 'BASHPID='"$BASHPID";
  echo 'PPID='"$PPID";
  exit 1;
)

{
  echo "inside {}";
  echo '$$='$$;
  echo 'BASHPID='"$BASHPID";
  echo 'PPID='"$PPID";
  exit 1;
}

echo "sh pid: $$"
echo "pid inside () brackets" && echo "$(echo $$)"
# echo "pid inside \(\) brackets" && echo "${echo $$}"

test "${whoami}" != 'root' && echo no fork subshell;
test "$(whoami)" != 'root' && (echo you are using a non-privileged account; exit 1)
