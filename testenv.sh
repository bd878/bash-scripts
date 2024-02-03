#!/bin/bash

# These lines print a message if the noclobber option is set

if [ -o noclobber ]

then

echo "your files are protected against accidential overwriting"

fi


