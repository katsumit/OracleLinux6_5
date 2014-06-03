#!/bin/sh
# MAC Address and UUID setting
ln -f -s /dev/null /etc/udev/rules.d/70-persistent-net.rules
sed -i -e "s:HWADDR=.*::g" /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i -e "s:UUID=.*::g" /etc/sysconfig/network-scripts/ifcfg-eth0
# ssh daemon setting
sed -i -e "s:^#UseDNS yes:UseDNS no:" /etc/ssh/sshd_config
service sshd start
chkconfig sshd on

