#!/bin/bash

# Undescore $_ special variable

echo $_   # /bin/bash
          # just called /bin/bash to runthe script
          # This will vary accodring to
          # how the script is invoked

du >/dev/null # no output from command
echo $_       # du

ls -al >/dev/null  # no output from command
                   # -al (last arg)

:
echo $_       # :

exit 0;


