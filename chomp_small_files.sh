#!/bin/bash

# Truncates small files
# Accepts working directory
# and words threshold

usage() {
  printf "Usage: %s <dir> <min words>\n" $ME
}

DIR=${1?`usage`}
MIN=${2?`usage`}
ME=`basename $0`

trap cleanup EXIT SIGINT SIGTERM

cleanup() {
  printf "===\naborted.\n"
  exit 1;
}

info() {
  printf "%s -usage for help\n" $ME
  printf "%s remove files in dir %s < %d words\n" $ME $DIR $MIN
  echo "==="
}

case "$DIR" in
  "-usage" | "--usage" )
  usage
  exit 1;
  ;;

  *)
  info
  ;;
esac

set -e
if [ ! -e $DIR ]; then
  printf "%s not exists\n" $DIR
fi
pushd $DIR &>/dev/null

RM_COUNT=0
for f in `ls -1 .`; do
  lines=`wc -w $f|awk '{print $1}'`
  if (( $lines < $MIN )); then
    printf "delete %s\n" $f
    rm -rf $f
    RM_COUNT=$(($RM_COUNT + 1))
  fi
done

popd &>/dev/null

echo "==="
printf "removed %d files\n" $RM_COUNT
echo "exit."

exit 0;
