#!/bin/bash
Install_Fcitx() {
    if [ ! -f "/usr/bin/fcitx" ]; then
        apt install fcitx 
    fi
}

Uninstall_Fcitx() {
    apt autoremove fcitx
}