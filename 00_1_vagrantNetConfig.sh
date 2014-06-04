#!/bin/sh
sed -i -e "s:^ONBOOT=no$:ONBOOT=yes:" /etc/sysconfig/network-scripts/ifcfg-eth0
service network restart
