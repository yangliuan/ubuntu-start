#!/bin/bash
InstallDeepinWine(){
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    sudo apt-get install com.qq.weixin.deepin
    sudo apt-get install -f
    #解决无法发送图片问题
    sudo apt-get install libjpeg62:i386
    sudo apt-get install libjpeg62
}