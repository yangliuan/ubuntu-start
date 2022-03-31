#!/bin/bash
Install_Sougoupinyin_Ubuntukylin() {
    curl -sL 'https://keyserver.ubuntu.com/pks/lookup?&op=get&search=0x73BC8FBCF5DE40C6ADFCFFFA9C949F2093F565FF' | apt-key add
    apt-add-repository 'deb http://archive.ubuntukylin.com/ukui focal main'
    apt-get upgrade
    apt-get install sogouimebs
    dpkg-divert --package im-config --rename /usr/bin/ibus-daemon
}

Uninstall_Sougoupinyin_Ubuntukylin() {
    apt-get autoremove sogouimebs
}