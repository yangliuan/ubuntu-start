#!/bin/bash
#https://shurufa.sogou.com/linux
Install_Sougoupinyin() {
    pushd ${start_dir}/src > /dev/null
    echo "Download sougou pinyin..."
    src_url="http://mirror.yangliuan.cn/sogoupinyin_${sougoupinyin_ver}_amd64.deb" && Download_src
    Install_Fcitx
    apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1 libqt5qmlworkerscript5 fcitx-frontend-qt5
    dpkg -i sogoupinyin_${sougoupinyin_ver}_amd64.deb
    apt install -f
    #rm -rfv sogoupinyin_${sougoupinyin_ver}_amd64.deb
    popd > /dev/null
}

Uninstall_Sougoupinyin() {
    dpkg -P sogoupinyin
    apt autoremove libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1 libqt5qmlworkerscript5 fcitx-frontend-qt5
    rm -rf /opt/sogoupinyin
}