#!/usr/bin/bash

# Sets up ethernet bridge
#   on specified runlevel.
# Attaches an interface,
#   assignes IPs, MACs
#   broadcast MACs, sets
#   routes in rt_tables.
# Put this script into /etc/init.d/
#   and symlink to appropriate runlevel.

CMD="$1";
[ -z "$CMD" ] && CMD="start";
case "$CMD" in
  start)
    ip link add dev br0 type bridge;
# Spanning Tree Protocol
    ip link set dev br0 type bridge stp_state 1;
    ip link add dev veth1000 type veth;
    ip link set dev veth1000 master br0;
    ip link set dev veth1000 down;
    ip addr add 0.0.0.0 dev veth1000;
    ip link set dev veth1000 up;
    ip addr add 10.0.5.1/24 broadcast 10.0.5.255 dev br1;
    ip link set dev br1 up;
    ip route add 10.0.5.1/24 dev br1 src 10.0.5.1 protocol static;
    for file in br1 veth1000;
    do
      echo "1" > /proc/sys/net/ipv4/conf/${file}/proxy_arp;
      echo "1" > /proc/sys/net/ipv4/conf/${file}/forwarding;
    done;
    echo "1" > /proc/sys/net/ipv4/ip_forward;
    ;;
  stop)
    ip link del dev br0;
    ip link del dev veth1000;
    ;;
  restart,reload)
    $0 stop;
    sleep 3;
    $0 start;
    ;;
esac;


