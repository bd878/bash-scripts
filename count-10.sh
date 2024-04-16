#!/bin/bash
# multiple ways to count up to 10

echo

# standard
for a in 1 2 3 4 5 6 7 8 9 10
do
  echo -n "$a "
done

echo; echo

# ================

# using "seq"
for a in `seq 10`
do
  echo -n "$a "
done

echo; echo

# ================

# using brace expansion
# bash, version 3+
for a in {1..10}
do
  echo -n "$a "
done

echo; echo

# ================

# C-like syntax
LIMIT=10
for ((a=l; a <= LIMIT; a++))
do
  echo -n "$a "
done

echo; echo

# ================

# C-like "comma operator"
for ((a=l, b=l; a <= LIMIT; a++, b++))
do # The comma concatenates operations
  echo -n "$a-$b "
done

echo; echo
exit 0;


