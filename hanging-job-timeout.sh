#!/bin/bash
#
# Timeout possibly hanging job

# Exhibits $! use
# '$!' is a PID of last job run in background

TIMEOUT=10

possibly_hanging_job()
{
  sleep 10000
}

possibly_hanging_job & { sleep ${TIMEOUT}; eval 'kill -9 $!'; }

# or alternatively
TIMEOUT=30
count=0

possibly_hanging_job & {
  while ((count < TIMEOUT)); do
    eval '[ ! -d "/proc/$!" ] && ((count = TIMEOUT))'
    # -d tests if last background proc exists (i.e. still running)
    ((count++))
    sleep 1
  done
  eval '[ -d "/proc/$!" ] && kill -15 $!'
}
