#!/bin/bash
#https://shurufa.sogou.com/linux
Install_Sougoupinyin() {
    pushd ${start_dir}/src > /dev/null

    echo "Download sougou pinyin..."
    #该版本没有生效暂时不用了
    src_url="http://mirror.yangliuan.cn/sogoupinyin_${sougoupinyin_ver}_amd64.deb" && Download_src
    apt-get install fcitx
    cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
    dpkg -i sogoupinyin_${sougoupinyin_ver}_amd64.deb
    apt-get -f install
    #apt-get purge ibus
    apt-get install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
    apt-get install libgsettings-qt1
    rm -rfv sogoupinyin_${sougoupinyin_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_Sougoupinyin() {
    dpkg -P sogoupinyin
}