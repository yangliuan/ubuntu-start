#!/bin/bash
#https://srf.baidu.com/site/guanwang_linux/index.html
Install_Baidupinyin() {
    pushd ${start_dir}/src > /dev/null
    echo "Download baidu pinyin..."
    Install_Fcitx
}

Uninstall_Baidupinyin() {
    echo "uninstall baidupinyin"
}