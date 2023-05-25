#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear
printf "
#######################################################################
#                            Ubuntu start test                        #
#######################################################################
"
# Check if user is root
[ $(id -u) != "0" ] && { echo "${CFAILURE}Error: You must be root to run this script${CEND}"; exit 1; }

start_dir=$(dirname "`readlink -f $0`")
pushd ${start_dir} > /dev/null
. ./include/color.sh
. ./version.txt
. ./options.conf
. include/download.sh
. include/check_os.sh
. include/command_parameters.sh
. include/patch_suport.sh
. include/video_download.sh
. include/qqmusic.sh
. include/neteasy_cloud_music.sh
#Install_PatchSuport | tee -a ${start_dir}/test.log
#Install_NvidiaDriver | tee -a ${start_dir}/test.log
# Patch_NeteasyCloudMusicFor2204 2>&1 | tee -a ${start_dir}/test.log

# 
# Patch_QQmusicFor2204 2>&1 | tee -a ${start_dir}/test.log
#Uninstall_BilbiliDownloader
#Install_BilbiliDownloader | tee -a ${start_dir}/test.log 