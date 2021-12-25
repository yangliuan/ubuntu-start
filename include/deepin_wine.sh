#!/bin/bash
InstallDeepinWine(){
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    sudo apt-get install com.qq.weixin.deepin
    sudo apt-get install -f
}