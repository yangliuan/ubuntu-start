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
. ./include/baidunetdisk.sh
. ./include/chrome.sh
. ./include/deepin_wine.sh
. ./include/dingtalk.sh
. ./include/feishu.sh
. ./include/flameshot.sh
. ./include/indicator_sysmonitor.sh
. ./include/lantern.sh
. ./include/neteasy_cloud_music.sh
. ./include/peek.sh
. ./include/qqmusic.sh
. ./include/qv2ray.sh
. ./include/remove_liboffice.sh
. ./include/remove_unwanted.sh
. ./include/sougoupinyin_ubuntukylin.sh
. ./include/sunlogin.sh
. ./include/theme_tools.sh
. ./include/vlc.sh
. ./include/wps.sh


ARG_NUM=$#
sudo apt update && sudo apt upgrade
sudo apt install curl wget

RemoveUnwanted 2>&1 | tee -a ${start_dir}/install.log

RemoveLiboffice 2>&1 | tee -a ${start_dir}/install.log

InstallSougoupinyinUbuntukylin 2>&1 | tee -a ${start_dir}/install.log

InstallChrome 2>&1 | tee -a ${start_dir}/install.log

InstallDeepinWine 2>&1 | tee -a ${start_dir}/install.log

InstallDingtalk 2>&1 | tee -a ${start_dir}/install.log

InstallFeishu 2>&1 | tee -a ${start_dir}/install.log

InstallFlameshot 2>&1 | tee -a ${start_dir}/install.log

InstallIndicatorSysmonitor 2>&1 | tee -a ${start_dir}/install.log

InstallLantern 2>&1 | tee -a ${start_dir}/install.log

InstallNeteasyCloudMusic 2>&1 | tee -a ${start_dir}/install.log

InstallPeek 2>&1 | tee -a ${start_dir}/install.log

InstallQQmusic 2>&1 | tee -a ${start_dir}/install.log

InstallQv2ray 2>&1 | tee -a ${start_dir}/install.log

InstallSunlogin 2>&1 | tee -a ${start_dir}/install.log

InstallThemeTools 2>&1 | tee -a ${start_dir}/install.log

InstallV2rayL 2>&1 | tee -a ${start_dir}/install.log

InstallVlc 2>&1 | tee -a ${start_dir}/install.log

InstallWps 2>&1 | tee -a ${start_dir}/install.log

sudo apt autoremove