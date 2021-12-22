#!/bin/bash

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear
printf "
#######################################################################
#                            Ubuntu start                             #
#######################################################################
"

start_dir=$(dirname "`readlink -f $0`")
pushd ${start_dir} > /dev/null
. ./version.txt
. ./include/download.sh
. ./include/remove_unwanted.sh
. ./include/remove_liboffice.sh
. ./include/sougoupinyin_ubuntukylin.sh
. ./include/chrome.sh
. ./include/dingtalk.sh
. ./include/wps.sh


ARG_NUM=$#
sudo apt update && sudo apt upgrade
sudo apt install curl wget

#RemoveUnwanted 2>&1 | tee -a ${start_dir}/install.log

#RemoveLiboffice 2>&1 | tee -a ${start_dir}/install.log

InstallSougoupinyinUbuntukylin 2>&1 | tee -a ${start_dir}/install.log