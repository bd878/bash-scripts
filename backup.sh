#!/bin/bash

# Example script that make files backup to remote server
# each %2 days

LOGFILE="/tmp/backup-`date +%w%W`.log"
echo "Starting backups for `date`" >> "$LOGFILE"

buplinux()
{
  DIR="/home/user/projects/gallery"
  TAR="Gallery.tar"
  BZIP="$TAR.bz2"
  SERVER="snd"
  RDIR="/var/www/html/backups/"

  cd "$DIR"
  # ...archive und schick
}

bupbash()
{
  DIR="/home/user/projects/test"
  TAR="book.tar"
  BZIP="$TAR.bz2"
  FILES="wiki/"
  SERVER="snd"
  RDIR="/var/www/html/backups/"

  cd "$DIR"
  tar -cf "$TAR" "$FILES"
  tar --bzip2 -f "$TAR"
  echo "...done." >> "$LOGFILE"
  echo "Copying to $SERVER..." >> "$LOGFILE"
  scp "$BZIP" "$SERVER:$RDIR" > /dev/null 2>&1
  echo "...done" >> "$LOGFILE"

  echo -e "Done backing up Bash course:\n$FILES\nRubbish removed." >> "$LOGFILE"
  rm "$BZIP"
}

DAY=`date +%w`

if [ "$DAY" -lt "2" ]; then
  echo "It is `date +%A`, only backing up Bash course" >> "$LOGFILE"
  bupbash
else
  buplinux
  bupbash
fi

echo -e "Remote backup `date` SUCCESS\n----------" >> "$LOGFILE"
