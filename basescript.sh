#!/bin/bash

echo "Script starts"

echo "=== Home dir path"
echo $HOME
echo

echo "=== You are using terminal"
echo $TERM
echo

echo "=== Services at runlevel 3"
ls /etc/rc3.d/S*
echo

echo "Exit."
echo

