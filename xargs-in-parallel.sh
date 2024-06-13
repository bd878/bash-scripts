#!/bin/bash
# run xargs in parallel

# convert all gif images in current dir to png
ls *gif | xargs -t -n1 -P2 gif2png

exit 0


