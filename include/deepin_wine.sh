#!/bin/bash
InstallDeepinWine(){
    wget -O- https://deepin-wine.i-m.dev/setup.sh | sh
    sudo apt install com.qq.weixin.deepin
    sudo apt install -f
}