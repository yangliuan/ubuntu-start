#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear
printf "
#######################################################################
#                            Ubuntu start                             #
#######################################################################
"
# Check if user is root
[ $(id -u) != "0" ] && { echo "${CFAILURE}Error: You must be root to run this script${CEND}"; exit 1; }

start_dir=$(dirname "`readlink -f $0`")
pushd ${start_dir} > /dev/null
. ./include/color.sh
. ./version.txt
. ./options.conf

uninstall_deepinwine_flag=y
if [ "${uninstall_deepinwine_flag}" == 'y' ]; then
    . ./include/deepin_wine.sh
    Uninstall_DeepinWine
fi