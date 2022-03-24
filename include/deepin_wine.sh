#!/bin/bash
InstallDeepinWine(){
    #github https://github.com/zq1997/deepin-wine
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    sudo apt-get install com.qq.weixin.deepin
    sudo apt-get install -f
    #解决无法发送图片问题
    sudo apt-get install libjpeg62:i386
    sudo apt-get install libjpeg62
    #字体问题
    sudo apt-get install fonts-wqy-microhei fonts-wqy-zenhei
}