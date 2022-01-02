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
. ./options.conf
. ./include/download.sh


ARG_NUM=$#
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install curl wget

# check service desktop
while :; do echo
    read -e -p "Do you want to remove Unwanted soft? [y/n](n): " remove_flag
    remove_flag=${remove_flag:-n}
    if [[ ! ${remove_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
        break;
    fi
done

# check Baidunetdisk 
while :; do echo
    read -e -p "Do you want to install baidunetdisk? [y/n](y): " baidunetdisk_flag
    baidunetdisk_flag=${baidunetdisk_flag:-y}
    if [[ ! ${baidunetdisk_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${baidunetdisk_flag}" == 'y' -a -e "/opt/baidunetdisk/baidunetdisk" ] && { echo "${CWARNING}baidunetdisk already installed! ${CEND}"; unset baidunetdisk_flag; }
        break;
    fi
done

# check chrome 
while :; do echo
    read -e -p "Do you want to install chrome? [y/n](y): " chrome_flag
    chrome_flag=${chrome_flag:-y}
    if [[ ! ${chrome_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${chrome_flag}" == 'y' -a -e "/opt/google/chrome/chrome" ] && { echo "${CWARNING}chrome already installed! ${CEND}"; unset chrome_flag; }
        break;
    fi
done

# check deepinwine 
while :; do echo
    read -e -p "Do you want to install deepinwine? [y/n](y): " deepinwine_flag
    deepinwine_flag=${deepinwine_flag:-y}
    if [[ ! ${deepinwine_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${deepinwine_flag}" == 'y' -a -e "/etc/apt/preferences.d/deepin-wine.i-m.dev.pref" ] && { echo "${CWARNING}deepinwine_flag already installed! ${CEND}"; unset deepinwine_flag; }
        break;
    fi
done

# check dingtalk
while :; do echo
    read -e -p "Do you want to install dingtalk? [y/n](y): " dingtalk_flag
    dingtalk_flag=${dingtalk_flag:-y}
    if [[ ! ${dingtalk_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${dingtalk_flag}" == 'y' -a -e "/opt/dingtalk/dingtalk.AppImage" ] && { echo "${CWARNING}dingtalk already installed! ${CEND}"; unset dingtalk_flag; }
        break;
    fi
done

# check feishu
while :; do echo
    read -e -p "Do you want to install feishu? [y/n](y): " feishu_flag
    feishu_flag=${feishu_flag:-y}
    if [[ ! ${feishu_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${feishu_flag}" == 'y' -a -e "" ] && { echo "${CWARNING}feishu already installed! ${CEND}"; unset feishu_flag; }
        break;
    fi
done

# check flameshot
while :; do echo
    read -e -p "Do you want to install flameshot? [y/n](y): " flameshot_flag
    flameshot_flag=${flameshot_flag:-y}
    if [[ ! ${flameshot_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${flameshot_flag}" == 'y' -a -e "/usr/bin/flameshot" ] && { echo "${CWARNING}flameshot already installed! ${CEND}"; unset flameshot_flag; }
        break;
    fi
done

# check indicator sysmonitor
while :; do echo
    read -e -p "Do you want to install indicator sysmonitor? [y/n](y): " indicator_sysmonitor_flag
    indicator_sysmonitor_flag=${indicator_sysmonitor_flag:-y}
    if [[ ! ${indicator_sysmonitor_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${indicator_sysmonitor_flag}" == 'y' -a -e "/usr/bin/indicator-sysmonitor" ] && { echo "${CWARNING}indicator sysmonitor already installed! ${CEND}"; unset indicator_sysmonitor_flag; }
        break;
    fi
done

# check lantern
while :; do echo
    read -e -p "Do you want to install lantern? [y/n](y): " lantern_flag
    lantern_flag=${lantern_flag:-y}
    if [[ ! ${lantern_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${lantern_flag}" == 'y' -a -e "/usr/bin/lantern" ] && { echo "${CWARNING}lantern already installed! ${CEND}"; unset lantern_flag; }
        break;
    fi
done

# check neteasy cloudmusic
while :; do echo
    read -e -p "Do you want to install neteasy cloudmusic? [y/n](y): " neteasy_cloudmusic_flag
    neteasy_cloudmusic_flag=${neteasy_cloudmusic_flag:-y}
    if [[ ! ${neteasy_cloudmusic_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${neteasy_cloudmusic_flag}" == 'y' -a -e "/opt/netease/netease-cloud-music/netease-cloud-music" ] && { echo "${CWARNING}neteasy cloudmusic already installed! ${CEND}"; unset neteasy_cloudmusic_flag; }
        break;
    fi
done

# check peek
while :; do echo
    read -e -p "Do you want to install peek? [y/n](y): " peek_flag
    peek_flag=${peek_flag:-y}
    if [[ ! ${peek_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${peek_flag}" == 'y' -a -e "/usr/bin/peek" ] && { echo "${CWARNING}peek already installed! ${CEND}"; unset peek_flag; }
        break;
    fi
done

# check qqmusic
while :; do echo
    read -e -p "Do you want to install qqmusic? [y/n](y): " qqmusic_flag
    qqmusic_flag=${qqmusic_flag:-y}
    if [[ ! ${qqmusic_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${qqmusic_flag}" == 'y' -a -e "/usr/bin/peek" ] && { echo "${CWARNING}qqmusic already installed! ${CEND}"; unset qqmusic_flag; }
        break;
    fi
done

# check qv2ray
while :; do echo
    read -e -p "Do you want to install qv2ray? [y/n](y): " qv2ray_flag
    qv2ray_flag=${qv2ray_flag:-y}
    if [[ ! ${qv2ray_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${qv2ray_flag}" == 'y' -a -e "/opt/qv2ray/Qv2ray-v2.7.0-linux-x64.AppImage" ] && { echo "${CWARNING}qv2ray already installed! ${CEND}"; unset qv2ray_flag; }
        break;
    fi
done

# check sougoupinyin ubuntukylin
while :; do echo
    read -e -p "Do you want to install sougoupinyin ubuntukylin? [y/n](y): " sougoupinyin_ubuntukylin_flag
    sougoupinyin_ubuntukylin_flag=${sougoupinyin_ubuntukylin_flag:-y}
    if [[ ! ${sougoupinyin_ubuntukylin_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${sougoupinyin_ubuntukylin_flag}" == 'y' -a -e "/usr/bin/sogouImeService" ] && { echo "${CWARNING}sougoupinyin ubuntukylin already installed! ${CEND}"; unset sougoupinyin_ubuntukylin_flag; }
        break;
    fi
done

# check sunlogin
while :; do echo
    read -e -p "Do you want to install sunlogin? [y/n](y): " sunlogin_flag
    sunlogin_flag=${sunlogin_flag:-y}
    if [[ ! ${sunlogin_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${sunlogin_flag}" == 'y' -a -e "/usr/bin/sogouImeService" ] && { echo "${CWARNING}sunlogin already installed! ${CEND}"; unset sunlogin_flag; }
        break;
    fi
done

# check theme tools
while :; do echo
    read -e -p "Do you want to install theme tools? [y/n](y): " theme_tools_flag
    theme_tools_flag=${theme_tools_flag:-n}
    if [[ ! ${theme_tools_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${theme_tools_flag}" == 'y' -a -e "/usr/bin/gnome-tweaks" ] && { echo "${CWARNING}theme tools already installed! ${CEND}"; unset theme_tools_flag; }
        break;
    fi
done

# check vlc
while :; do echo
    read -e -p "Do you want to install vlc? [y/n](y): " vlc_flag
    vlc_flag=${vlc_flag:-n}
    if [[ ! ${vlc_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${vlc_flag}" == 'y' -a -e "/snap/bin/vlc" ] && { echo "${CWARNING}vlc already installed! ${CEND}"; unset vlc_flag; }
        break;
    fi
done

# check wps
while :; do echo
    read -e -p "Do you want to install wps? [y/n](y): " wps_flag
    wps_flag=${wps_flag:-y}
    if [[ ! ${wps_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${wps_flag}" == 'y' -a -e "/usr/bin/wps" ] && { echo "${CWARNING}wps already installed! ${CEND}"; unset wps_flag; }
        break;
    fi
done

# check xDroid
while :; do echo
    read -e -p "Do you want to install xDroid? [y/n](y): " xDroid_flag
    xDroid_flag=${xDroid_flag:-y}
    if [[ ! ${xDroid_flag} =~ ^[y,n]$ ]]; then
        echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
    else
         [ "${xDroid_flag}" == 'y' -a -e "/opt/xdroid/bin" ] && { echo "${CWARNING}xDroid already installed! ${CEND}"; unset xDroid_flag; }
        break;
    fi
done


if [ "${remove_flag}" == 'y' ]; then
    . include/remove_liboffice.sh
    . include/remove_unwanted.sh
    RemoveUnwanted 2>&1 | tee -a ${start_dir}/install.log
    RemoveLiboffice 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${baidunetdisk_flag}" == 'y' ]; then
    . include/baidunetdisk.sh
    InstallBaidunetdisk 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${chrome_flag}" == 'y' ]; then
    . include/chrome.sh
    InstallChrome 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${deepinwine_flag}" == 'y' ]; then
    . ./include/deepin_wine.sh
    InstallDeepinWine 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${dingtalk_flag}" == 'y' ]; then
    . include/dingtalk.sh
    InstallDingtalk 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${feishu_flag}" == 'y' ]; then
    . include/feishu.sh
    InstallFeishu 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${flameshot_flag}" == 'y' ]; then
    . include/flameshot.sh
    InstallFlameshot 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${indicator_sysmonitor_flag}" == 'y' ]; then
    . include/indicator_sysmonitor.sh
    InstallIndicatorSysmonitor 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${lantern_flag}" == 'y' ]; then
    . include/lantern.sh
    InstallLantern 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${neteasy_cloudmusic_flag}" == 'y' ]; then
    . include/neteasy_cloud_music.sh
    InstallNeteasyCloudMusic 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${peek_flag}" == 'y' ]; then
    . include/peek.sh
    InstallPeek 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${qqmusic_flag}" == 'y' ]; then
    . include/qqmusic.sh
    InstallQQmusic 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${qv2ray_flag}" == 'y' ]; then
    . include/qv2ray.sh
    InstallQv2ray 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${sougoupinyin_ubuntukylin_flag}" == 'y' ]; then
    . include/sougoupinyin_ubuntukylin.sh
    InstallSougoupinyinUbuntukylin 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${sunlogin_flag}" == 'y' ]; then
    . include/sunlogin.sh
    InstallSunlogin 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${theme_tools_flag}" == 'y' ]; then
    . include/theme_tools.sh
    InstallThemeTools 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${vlc_flag}" == 'y' ]; then
    . include/vlc.sh
    InstallVlc 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${wps_flag}" == 'y' ]; then
    . include/wps.sh
    InstallWps 2>&1 | tee -a ${start_dir}/install.log
fi

if [ "${xDroid_flag}" == 'y' ]; then
    . include/xDroid.sh
    InstallxDroid 2>&1 | tee -a ${start_dir}/install.log
fi

sudo apt-get autoremove