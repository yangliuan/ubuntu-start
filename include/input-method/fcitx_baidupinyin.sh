#!/bin/bash
#https://srf.baidu.com/site/guanwang_linux/index.html
#https://blog.csdn.net/yjp19871013/article/details/126031527
Install_Baidupinyin() {
    pushd ${start_dir}/src > /dev/null
    echo "Download baidu pinyin..."
    src_url="http://mirror.yangliuan.cn/fcitx-baidupinyin.deb" && Download_src
    Install_Fcitx
    apt install fcitx-table qtcreator qt5* qml-module-qtquick-controls2
    dpkg -i fcitx-baidupinyin.deb
    popd > /dev/null
}

Uninstall_Baidupinyin() {
    apt remove fcitx-table qtcreator qt5* qml-module-qtquick-controls2
    sudo dpkg -P fcitx-baidupinyin
}