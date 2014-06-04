#!/bin/sh
sed -i -e "s/^# %wheel.*NOPASSWD/%wheel	ALL=(ALL)	NOPASSWD/" /etc/sudoers
sed -i -e "s:^.*requiretty:# Default requirettty:" /etc/sudoers
usermod -G wheel vagrant
