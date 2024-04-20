#!/bin/bash
# testing range of chars

echo; echo "Hit a key, then hit return."
read Keypress

case "$Keypress" in
  [[:lower:]] ) echo "Lowercase letter";;
  [[:upper:]] ) echo "Uppercase letter";;
  [0-9]       ) echo "Digit";;
  *           ) echo "Punctuation, whitespace, or other";;
esac  # Allows ranges of chars in [square brackets]
      # or POSIX ranges in [[

