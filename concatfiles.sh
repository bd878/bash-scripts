#!/bin/bash

# Concat files into one

echo 1 > "${file1="file1.xxx"}"
echo 2 > "${file2="file2.xxx"}"
echo 3 > "${file3="file3.xxx"}"

combined="combined.xxx"
cat {$file1,$file2,$file3} > $combined
cat $combined

exit 0;


