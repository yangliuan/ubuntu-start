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
TEMP=`getopt -o hvV --long help,version,all,input_method_option:,baidunetdisk,chrome,deepinwine,dingtalk,linuxqq,feishu,flameshot,indicator_sysmonitor,lantern,neteasy_cloudmusic,qqmusic,peek,qv2ray,sougoupinyin,sunlogin,theme_tools,vlc,wps,xDroid,conky,my_weather_indicator,gnome_pomodoro,reboot -- "$@" 2>/dev/null`
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
    --all)
      baidunetdisk_flag=y
      chrome_flag=y
      deepinwine_flag=y
      dingtalk_flag=y
      linuxqq_flag=y
      feishu_flag=y
      flameshot_flag=y
      indicator_sysmonitor_flag=y
      lantern_flag=y
      neteasy_cloudmusic_flag=y
      qqmusic_flag=y
      peek_flag=y
      qv2ray_flag=y
      imput_method_flag=y
      sunlogin_flag=y
      theme_tools_flag=y
      vlc_flag=y
      wps_flag=y
      xDroid_flag=y
      conky_flag=y
      my_weather_indicator_flag=y
      gnome_pomodoro_flag=y
      shift 1
      ;;
    --input_method_option)
      input_method_option=$2; shift 2
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
    --my_weather_indicator)
      my_weather_indicator_flag=y; shift 1
      ;;
    --gnome_pomodoro)
      gnome_pomodoro_flag=y; shift 1
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

case "${input_method_option}" in
  1)
    . include/input-method/fcitx_googlepinyin.sh
    Uninstall_GooglePinyin
    ;;
  2)
    . include/input-method/fcitx_sougoupinyin.sh
    Uninstall_Sougoupinyin
    ;;
  3)
    . include/input-method/fcitx_baidupinyin.sh
    Uninstall_Baidupinyin
    ;;
esac

if [ "${baidunetdisk_flag}" == 'y' ]; then
    . ./include/baidunetdisk.sh
    Uninstall_Baidunetdisk
fi

if [ "${chrome_flag}" == 'y' ]; then
    . ./include/chrome.sh
    Uninstall_Chrome
fi

if [ "${deepinwine_flag}" == 'y' ]; then
    . ./include/deepin_wine.sh
    Uninstall_Deepin_Wechat
    Uninstall_DeepinWine
fi

if [ "${dingtalk_flag}" == 'y' ]; then
    . ./include/dingtalk.sh
    Uninstall_Dingtalk
fi

if [ "${linuxqq_flag}" == 'y' ]; then
    . ./include/linuxqq.sh
    Uninstall_LinuxQQ
fi

if [ "${feishu_flag}" == 'y' ]; then
    . ./include/feishu.sh
    Uninstall_Feishu
fi

if [ "${flameshot_flag}" == 'y' ]; then
    . ./include/flameshot.sh
    Uninstall_Flameshot
fi

if [ "${indicator_sysmonitor_flag}" == 'y' ]; then
    . ./include/indicator_sysmonitor.sh
    Uninstall_IndicatorSysmonitor
fi

if [ "${lantern_flag}" == 'y' ]; then
    . ./include/lantern.sh
    Uninstall_Lantern
fi

if [ "${neteasy_cloudmusic_flag}" == 'y' ]; then
    . ./include/neteasy_cloud_music.sh
    Uninstall_NeteasyCloudMusic
fi

if [ "${qqmusic_flag}" == 'y' ]; then
    . ./include/qqmusic.sh
    Uninstall_QQmusic
fi

if [ "${peek_flag}" == 'y' ]; then
    . ./include/peek.sh
    Uninstall_Peek
fi

if [ "${qv2ray_flag}" == 'y' ]; then
    . ./include/qv2ray.sh
    Uninstall_Qv2ray
fi

if [ "${sunlogin_flag}" == 'y' ]; then
    . ./include/sunlogin.sh
    Uninstall_Sunlogin
fi

if [ "${theme_tools_flag}" == 'y' ]; then
    . ./include/theme_tools.sh
    Uninstall_ThemeTools
fi

if [ "${vlc_flag}" == 'y' ]; then
    . ./include/vlc.sh
    Uninstall_Vlc
fi

if [ "${wps_flag}" == 'y' ]; then
    . ./include/wps.sh
    Uninstall_Wps
fi

if [ "${xDroid_flag}" == 'y' ]; then
    . ./include/xDroid.sh
    Uninstall_xDroid
fi

if [ "${conky_flag}" == 'y' ]; then
    . ./include/conky.sh
    Uninstall_Conky
fi

if [ "${my_weather_indicator_flag}" == 'y' ]; then
    . include/my_weather_indicator.sh
    Uninstall_MyWeatherIndicator
fi

if [ "${gnome_pomodoro_flag}" == 'y' ]; then
    . include/gnomepomodoro.sh
    Uninstall_GnomePomodoro
fi

apt autoremove