#!/bin/bash
# https://www.google.cn/inputtools/services/features/input-method.html#tab=pinyin
Install_GooglePinyin() {
    Install_Fcitx
    apt install fcitx-googlepinyin -y
}

Uninstall_GooglePinyin() {
    apt autoremove fcitx-googlepinyin
} 