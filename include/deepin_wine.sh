#!/bin/bash
Install_DeepinWine() {
    #github https://github.com/zq1997/deepin-wine
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    apt-get install com.qq.weixin.deepin
    apt-get install -f
    #解决无法发送图片问题
    apt-get install libjpeg62:i386
    apt-get install libjpeg62
    #字体问题
    apt-get install fonts-wqy-microhei fonts-wqy-zenhei
}

Uninstall_DeepinWine() {
    apt-get purge --autoremove com.qq.weixin.deepin
    rm -rfv /etc/apt/preferences.d/deepin-wine.i-m.dev.pref
    rm -rfv /etc/apt/sources.list.d/deepin-wine.i-m.dev.list
    rm -rfv /etc/profile.d/deepin-wine.i-m.dev.sh
    apt-get update
    rm -rfv /home/${run_user}/Documents/Tencent Files
    rm -rfv /home/${run_user}/~/Documents/WeChat Files
}
