#!/bin/bash
#https://shurufa.sogou.com/linux
Install_Sougoupinyin() {
    pushd ${start_dir}/src > /dev/null

    echo "Download sougou pinyin..."
    #该版本没有生效暂时不用了
    src_url="http://mirror.yangliuan.cn/sogoupinyin_${sougoupinyin_ver}_amd64.deb" && Download_src
    aptitude install fcitx fcitx-frontend-gtk2 fcitx-frontend-gtk3 fcitx-frontend-qt5 fcitx-module-x11
    cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
    apt-get install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
    apt-get install libgsettings-qt1
    dpkg -i sogoupinyin_${sougoupinyin_ver}_amd64.deb
    rm -rfv sogoupinyin_${sougoupinyin_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_Sougoupinyin() {
    dpkg -P sogoupinyin
    apt-get autoremove fcitx fcitx-frontend-gtk2 fcitx-module-x11 fcitx-frontend-gtk3 fcitx-frontend-qt5 libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2 libgsettings-qt1
    rm -rf /etc/xdg/autostart/fcitx.desktop /opt/sogoupinyin
}