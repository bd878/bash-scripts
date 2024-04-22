#!/bin/bash
# progress bar

BAR_WIDTH=50
BAR_CHAR_START="["
BAR_CHAR_END="]"
BAR_CHAR_EMPTY="."
BAR_CHAR_FULL="="
BRACKET_CHARS=2
LIMIT=100

print_progress_bar()
{
  # Calculate how many chars will be full
  let "full_limit = ((($1 - $BRACKET_CHARS) * $2) / $LIMIT)"

  # Calculate how many chars will be empty
  let "empty_limit = ($1 - $BRACKET_CHARS) - ${full_limit}"

  # prepare the bar
  bar_line="${BAR_CHAR_START}"
  for ((j=0; j<full_limit; j++)); do
    bar_line="${bar_line}${BAR_CHAR_FULL}"
  done

  for ((j=0; j<empty_limit; j++)); do
    bar_line="${bar_line}${BAR_CHAR_EMPTY}"
  done

  bar_line="${bar_line}${BAR_CHAR_END}"

  printf "%3d%% %s" $2 ${bar_line}
}

# a sample code that uses it
MAX_PERCENT=100
for ((i=0; i<=MAX_PERCENT; i++)); do
  #
  sleep 1
  # ... Or run some other commands ...
  #
  print_progress_bar ${BAR_WIDTH} ${i}
  echo -en "\r"

done

echo ""

exit 0

