#!/bin/bash
InstallSougoupinyinUbuntukylin(){
    curl -sL 'https://keyserver.ubuntu.com/pks/lookup?&op=get&search=0x73BC8FBCF5DE40C6ADFCFFFA9C949F2093F565FF' | sudo apt-key add
    sudo apt-add-repository 'deb http://archive.ubuntukylin.com/ukui focal main'
    sudo apt-get upgrade
    sudo apt-get install sogouimebs
    sudo dpkg-divert --package im-config --rename /usr/bin/ibus-daemon
}