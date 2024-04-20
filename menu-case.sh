#!/bin/bash
# address database

clear # clear screen

echo "      Contact list"
echo "      ------- ----"
echo "Choose one of the following persons:"
echo
echo "[E]vans, Roland"
echo "[J]ones, Mildred"
echo "[S]mith, Julie"
echo "[Z]ane, Morris"
echo

read person

case "$person" in
# Note variable is quoted
  "E" | "e" )
  # Accept upper or lowercase input.
  echo
  echo "Roland Evans"
  ;;
# Note double semicolon to terminate each option

  "J" | "j" )
  echo
  echo "Mildred Jones"
  ;;
# Add info for Smith & Zane later

  *)
  # Default option
  echo
  echo "Not yet in database"
  ;;
esac

echo

exit 0;


