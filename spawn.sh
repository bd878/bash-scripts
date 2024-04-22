#!/bin/bash
# script that spawns itself

PIDS=$(pidof sh $0) # Process IDs of th evarious instances of this script
P_array=( $PIDS )   # Put them in an array
echo $PIDS
let "instances = ${#P_array[*]} - 1"  # Count elements, less 1

echo "$instances instance(s) of this script running"
echo "[Hit Ctl-C to exit.]"; echo


sleep 1 # wait
sh $0   # do it again

# If you wait too long,
# this script will eat up all resources

