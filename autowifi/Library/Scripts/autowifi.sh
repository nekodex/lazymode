#!/bin/bash
ETH=en0
AIR=en1

ETHERNET=`ifconfig $ETH | grep status | cut -d":" -f 2 | sed -e 's/^[ \t]*//'`
AIRPORT=`ifconfig $AIR | grep status | cut -d":" -f 2 | sed -e 's/^[ \t]*//'`

if [[ $ETHERNET == "inactive" && $AIRPORT == "inactive" ]]; then
  /usr/sbin/networksetup -setairportpower $AIR on
else
 if [[ $ETHERNET == "active" && $AIRPORT == "active" ]]; then
    /usr/sbin/networksetup -setairportpower $AIR off
  fi
fi

