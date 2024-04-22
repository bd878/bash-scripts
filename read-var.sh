#!/bin/bash
# reading variables example

echo -n "Enter the value of var 'var1': "
# -n option suppresses newline

read var1
# no '$', because it is being set

echo "var1 = $var1"

echo

# 'read' can set multiple variables
echo -n "Enter the values of var 'var1' and 'var3' "
echo -n "(separated by a space of tab): "
read var2 var3
echo "var2 = $var2    var3 = $var3"
# If you input only one value,
# the other will remain unset (null)

exit 0

