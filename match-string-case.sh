#!/bin/bash
# Simple string matching using
# a 'case' construct

match_string ()
{ # Exact string match
  MATCH=0
  E_NOMATCH=90
  PARAMS=2  # Func requires 2 args
  E_BAD_PARAMS=91

  [ $# -eq $PARAMS ] || return $E_BAD_PARAMS

  case "$1" in
  "$2") return $MATCH;;
  *   ) return $E_NOMATCH;;
  esac
}

a=one
b=two
c=three
d=two

match_string $1
echo $?

match_string $a $b
echo $?

match_string $b $d
echo $?

exit 0


