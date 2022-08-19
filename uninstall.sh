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
. ./include/download.sh
. ./include/check_os.sh
. ./include/command_parameters.sh

ARG_NUM=$#
TEMP=`getopt -o hvV --long help,version,baidunetdisk,chrome,deepinwine,dingtalk,linuxqq,feishu,flameshot,indicator_sysmonitor,lantern,neteasy_cloudmusic,qqmusic,peek,qv2ray,sougoupinyin,sunlogin,theme_tools,vlc,wps,xDroid,conky,reboot -- "$@" 2>/dev/null`
[ $? != 0 ] && echo "${CWARNING}ERROR: unknown argument! ${CEND}" && Show_Help && exit 1
eval set -- "${TEMP}"
while :; do
  [ -z "$1" ] && break;
  case "$1" in
    -h|--help)
      Show_Help; exit 0
      ;;
    -v|-V|--version)
      version; exit 0
      ;;
    --baidunetdisk)
      baidunetdisk_flag=y; shift 1
      ;;
    --chrome)
      chrome_flag=y; shift 1
      ;;
    --deepinwine)
      deepinwine_flag=y; shift 1
      ;;
    --dingtalk)
      dingtalk_flag=y; shift 1
      ;;
    --linuxqq)
      linuxqq_flag=y; shift 1
      ;;
    --feishu)
      feishu_flag=y; shift 1
      ;;
    --flameshot)
      flameshot_flag=y; shift 1
      ;;
    --indicator_sysmonitor)
      indicator_sysmonitor_flag=y; shift 1
      ;;
    --lantern)
      lantern_flag=y; shift 1
      ;;
    --neteasy_cloudmusic)
      neteasy_cloudmusic_flag=y; shift 1
      ;;
    --qqmusic)
      qqmusic_flag=y; shift 1
      ;;
    --peek)
      peek_flag=y; shift 1
      ;;
    --qv2ray)
      qv2ray_flag=y; shift 1
      ;;
    --sougoupinyin)
      sougoupinyin_flag=y; shift 1
      ;;
    --sunlogin)
      sunlogin_flag=y; shift 1
      ;;
    --theme_tools)
      theme_tools_flag=y; shift 1
      ;;
    --vlc)
      vlc_flag=y; shift 1
      ;;
    --wps)
      wps_flag=y; shift 1
      ;;
    --xDroid)
      xDroid_flag=y; shift 1
      ;;
    --conky)
      conky_flag=y; shift 1
      ;;
    --reboot)
      reboot_flag=y; shift 1
      ;;
    --)
      shift
      ;;
    *)
      echo "${CWARNING}ERROR: unknown argument! ${CEND}" && Show_Help && exit 1
      ;;
  esac
done

if [ "${deepinwine_flag}" == 'y' ]; then
    . ./include/deepin_wine.sh
    Uninstall_DeepinWine
fi

if [ "${conky_flag}" == 'y' ]; then
    . ./include/conky.sh
    Uninstall_Conky
fi

if [ "${qv2ray_flag}" == 'y' ]; then
    . ./include/qv2ray.sh
    Uninstall_Qv2ray
fi

if [ "${dingtalk_flag}" == 'y' ]; then
    . ./include/dingtalk.sh
    Uninstall_Dingtalk
fi

if [ "${qqmusic_flag}" == 'y' ]; then
    . ./include/qqmusic.sh
    Uninstall_QQmusic
fi

if [ "${xDroid_flag}" == 'y' ]; then
    . ./include/xDroid.sh
    Uninstall_xDroid
fi

apt-get autoremove