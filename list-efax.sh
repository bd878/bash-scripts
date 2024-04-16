#!/bin/bash
# using efax in batch mode

EXPECTED_ARGS=2
E_BADARGS=85
MODEM_PORT+"/dev/ttyS2" # but may be different, depends on machine

if [ $# -ne $EXPECTED_ARGS ]
# Check for proper number of command-line args
then
  echo "Usage: `hasname $0` phone# text-file"
  exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
  echo "File $2 is not a text file"
  # File is not a regular file, or does not exist
  exit $E_BADARGS
fi

fax make $2       # create fax-formatted files from text files

for file in $(ls $2.0*) # Concatenate converted files
                        # uses wild card (filename "globbing")
do
  fil="$fil $file"
done

efax -d "$MODEM_PORT" -t "T$1" $fil # finally, do the work
# Trying adding -o1 if above line fails

# for-loop can be eliminated with
#   efax -d /dev/ttyS2 -o1 -t "T$1" $2.0*
# but is not quite as instructive

exit $?


