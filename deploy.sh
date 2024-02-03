#!/bin/bash

umask 0
cd /
setsid -f sh -c 'exec "/home/user/projects/test/bash/writer.sh"'

exit 1;

