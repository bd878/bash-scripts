#!/bin/bash

# normally, the shell forks off a child process,
# once it encounteres a command.
# "exec" builtin does not make shell fork,
# but instead exec'ed command replaces the shell

echo

echo "This line appears ONCE in the script, yet it keeps echoing"
echo "The PID of this instance of the script is still $$"

sleep 1

exec $0 # spawns another instance of this same script
        # that replaces the previous one

echo "This line will never echo!"

exit 99 # will not exit here


