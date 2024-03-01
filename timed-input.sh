#!/bin/bash
#
# Timed input

TIMER_INTERRUPT=14
TIMELIMIT=3  # Three seconds in this instance
             # May be set to different value

PrintAnswer()
{
  if [ "$answer" = TIMEOUT ]
  then
    echo $answer
  else
    echo "Your favourite is $answer"
    kill $!
  fi
}

TimerOn()
{
  sleep $TIMELIMIT && kill -s 14 $$ &
  # Wait 3 seconds, then sigalarm
}

Int14Vector()
{
  answer="TIMEOUT"
  PrintAnswer
  exit $TIMER_INTERRUPT
}

trap Int14Vector $TIMER_INTERRUPT
# Timer interrut (14) subverted for our purposes

echo "What is your favourite plate"
TimerOn
read answer
PrintAnswer

# What about timing not just user input,
# but an entire script?

# Consider writing app in C or C++,
# using appropriate library func (alarm, setiterm)

exit 0

