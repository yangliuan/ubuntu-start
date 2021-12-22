#!/bin/bash
sudo apt update && sudo apt upgrade

start_dir=$(dirname "`readlink -f $0`")
pushd ${start_dir} > /dev/null
. ./version.txt
. ./download.sh
. ./include/remove_unwanted.sh
. ./include/remove_liboffice.sh
. ./include/chrome.sh
. ./include/dingtalk.sh
. ./include/wps.sh
. ./include/sougoupinyin.sh

InstallSougoupinyin