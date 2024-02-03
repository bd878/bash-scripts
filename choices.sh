#!/bin/bash

# Outputs list of choices using
# here doc

if [ $# -ne 1 ]; then
  echo "Usage: $0 file"
  exit 1;
fi

echo "Select an archive programm: "
doc=`cat <<ARCHIVES
compress
zip
gzip
bzip2
ARCHIVES`
echo "$doc"

read archive
echo "$doc" | grep "\<$archive\>" - 

if [ $? -ne 0 ]; then
  echo "Wrong choice: $archive"
  exit 1
fi

echo "Archiving $1 with $archive"
case $archive in
  "compress")
  tar --compress -cf "$1.Z" $1
  ;;
  "zip")
  tar --use-compress-program=zip -cf "$1.tar.zip" $1
  ;;
  "gzip")
  tar --gzip -cf "$1.tar.gz" $1
  ;;
  "bzip2")
  tar --bzip2 -cf "$1.tar.bz2" $1
  ;;
  *)
  echo "Unknown archiver"
  exit 1;
  ;;
esac

echo "Done."

exit 0;
