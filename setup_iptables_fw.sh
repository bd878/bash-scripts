#!/bin/bash

# This sample configuration is for a single host firewall
# config with no services supported by the firewall
# machine itself

# USER CONFIGURABLE SECTION

# The name and location of ipchains utility
IPTABLES=iptables

# Path to executable
PATH="/usr/bin"

# Internal network address space and net devices
OURNET="172.29.16.0/24"
OURCAST="172.29.16.255"
OURDEV="eth0"

# Outside address space and net device that supports it
ANYADDR="0/0"
ANYDEV="eth1"

# TCP services we wish to allow to pass
# "" empty means all ports
TCPIN="smtp,www"
TCPOUT="smtp,www,ftp,ftp-data,irc"

# UDP services we wish to allow to pass
# "" empty means all ports
UDPIN="domain"
UDPOUT="domain"

# ICMP services we with to allow to pass
# ref: /usr/include/netinet/ip_icmp.h for type numbers
ICMPIN="0,3,11"
ICMPOUT="8,3,11"

# Logging; uncomment this line to enable
# logging of datagrams, that are blocked by the firewall
# LOGGING=1

# END USER CONFIGURABLE SECTION
###############################
# Flush the Input table rules
$IPTABLES -F forward

# We want to deny incoming access by default
$IPTABLES -P forward deny

# Drop all datagrams destined for this host received from outside
$IPTABLES -A input -i $ANYDEV -j DROP

# SPOOFING
# We should not accept any datagrams with a source addr 
# matching ours from the outside, deny them
$IPTABLES -A forward -s $OURNET -i $ANYDEV -j DROP

# SMURF
# Disallow icmp to our broadcast addr to prevend "smurf" style attack
$IPTABLES -A forward -m multiport -p icmp -i $ANYDEV -d $OURNET -j DENY

# We should accept fragments, in iptables we must do this explicitly
$IPTABLES -A forward -f -j ACCEPT

# TCP
# Accept all TCP datagrams belonging to an existing connection
# (i.e. having ACK bit set) for the TCP ports we're allowing though.
# This should catch more than 95% of all valid TCP packets
$IPTABLES -A forward -m multiport -p tcp -d $OURNET --dports $TCPIN /
  ! --tcp-flags SYN,ACK ACK -j ACCEPT
$IPTABLES -A forward -m multiport -p tcp -s $OURNET --sports $TCPIN /
  ! --tcp-flags SYN,ACK ACK -j ACCEPT

# TCP - INCOMING CONNECTIONS
# We will accept connection requests from the outside only on the
# allowed TCP ports
$IPTABLES -A forward -m multiport -p tcp -i $ANYDEV -d $OURNET $TCPIN /
  --syn -j ACCEPT

# TCP - OUTGOING CONNECTIONS
# Accept all outging tcp connections requests on allowed TCP ports
$IPTABLES -A forward -m multiport -p tcp -i $OURDEV -d $ANNYADDR /
  --dports $TCPOUT --syn -j ACCEPT

# UDP - INCOMING
# Allow all UDP datagrams in on the allowed ports and back
$IPTABLES -A forward -m multiport -p udp -i $OURDEV -d $ANYADDR /
  --dports $UDPOUT -j ACCEPT
$IPTABLES -A forward -m multiport -p udp -i $OURDEV -s $ANYADDR /
  --sports $UDPOUT -j ACCEPT

# ICMP - INCOMING
# Allow ICMP datagrams in of the allowed types
$IPTABLES -A forward -m multiport -p icmp -i $ANYDEV -d $OURNET /
  --dports $ICMPIN -j ACCEPT
# ICMP - OUTGOING
# Allow ICMP datagrams out of the allowed types
$IPTABLES -A forward -m multiport -p icmp -i $OURDEV -d $ANYADDR /
  --dports $ICMPOUT -j ACCEPT

# DEFAULT AND LOGGING
# All remaining datagrams fall through to the default
# rule and are dropped. They will be logged if you've
# configured the LOGGING variable above

if [ "$LOGGING" ]
then
  # Log barred TCP
  $IPTABLES -A forward -m tcp -p tcp -j LOG
  # Log barred UDP
  $IPTABLES -A forward -m udp -p udp -j LOG
  # Log barred ICMP
  $IPTABLES -A forward -m udp -p icmp -j LOG
fi
#
# end.

  
