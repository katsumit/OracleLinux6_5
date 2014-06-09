#!/bin/bash
# Kernel パラメータ登録
cat 03_prepareKernelParam_inc_for_sysctl.txt >> /etc/sysctl.conf
sysctl -p

# ulimit設定
. ./replaceAndAppend.sh "# End of file" 03_prepareKernelParam_inc_for_limitsConf.txt /etc/security/limits.conf

# pam.d/login設定
cat 03_prepareKernelParam_inc_for_pam_d_login.txt >> /etc/pam.d/login

