#!/bin/bash
# printf is an enchanged echo
# it is a limited variant of C printf()
# , but it's syntax is somewhat different

declare -r PI=3.14159 # constant
declare -r DecimalConstant=31373

Message1="Greetings,"
Message2="Earthling."

echo

printf "Pi to 2 decimal places = %1.2f" $PI
echo
printf "Pi to 9 decimal places = %1.9f" $PI # even rounds off correctly

printf "\n"                                 # Prints a line feed,
                                            # equivalent to 'echo'

printf "Constant = \t%d\n" $DecimalConstant # Insert tab (\t)

printf "%s %s \n" $Message1 $Message2

echo

# ================
# Simulation of C function

echo

Pi12=$(printf "%1.12f" $PI)
echo "Pi to 12 decimal places = $Pi12"  # Roundoff error

Msg=`printf "%s %s \n" $Message1 $Message2
echo $Msg; echo $Msg

exit 0



