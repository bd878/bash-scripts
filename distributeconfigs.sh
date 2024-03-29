#!/bin/bash

# Distribute server configs through hosts

if [ $(whoami) != "root" ]; then
  echo "Must be root to run $0"
  exit 1;
fi
if [ -z $1 ]; then
  echo "Usage: $0 </path/to/httpd.conf>"
  exit 1
fi

httpd_conf_new=$1
httpd_conf_path="/usr/local/apache/conf"
login=htuser

farm_hosts=(web03 web04 web05 web06 web07)

for i in ${farm_hosts[@]}; do
  su $login -c "scp $httpd_conf_new ${i}:${httpd_conf_path}"
  su $login -c "ssh $i sudo /usr/local/apache/bin/apachectl gracceful"
done

exit 0;

