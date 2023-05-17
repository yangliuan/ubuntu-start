#!/bin/bash
#github https://github.com/zq1997/deepin-wine
Install_DeepinWine() {
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    apt-get -y install -f
}

Uninstall_DeepinWine() {
    rm -rfv /etc/apt/preferences.d/deepin-wine.i-m.dev.pref
    rm -rfv /etc/apt/sources.list.d/deepin-wine.i-m.dev.list
    rm -rfv /etc/profile.d/deepin-wine.i-m.dev.sh
    apt-get update
}

Install_Deepin_Wechat() {
    apt-get -y install com.qq.weixin.deepin
    #解决无法发送图片问题
    apt-get -y install libjpeg62:i386
    apt-get -y install libjpeg62
    #字体问题
    apt-get -y install fonts-wqy-microhei fonts-wqy-zenhei
}

Uninstall_Deepin_Wechat() {
    apt-get -y autoremove com.qq.weixin.deepin
    rm -rfv /home/${run_user}/Documents/Tencent Files
    rm -rfv /home/${run_user}/~/Documents/WeChat Files
}