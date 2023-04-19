#!/bin/bash
#https://shurufa.sogou.com/linux
Install_Sougoupinyin() {
    pushd ${start_dir}/src > /dev/null

    echo "Download sougou pinyin..."
    src_url="http://mirror.yangliuan.cn/sogoupinyin_${sougoupinyin_ver}_amd64.deb" && Download_src
    #cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
    #apt autoremove ibus
    apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1
    dpkg -i sogoupinyin_${sougoupinyin_ver}_amd64.deb
    #rm -rfv sogoupinyin_${sougoupinyin_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_Sougoupinyin() {
    dpkg -P sogoupinyin
    apt-get autoremove libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1
    #rm -rf /etc/xdg/autostart/fcitx.desktop /opt/sogoupinyin
}