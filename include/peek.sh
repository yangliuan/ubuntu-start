#!/bin/bash
Install_Peek() {
    add-apt-repository ppa:peek-developers/stable
    apt-get update
    apt-get install peek
}

Uninstall_Peek() {
    apt-get autoremove peek
    rm -rfv /etc/apt/sources.list.d/peek-developers-ubuntu-stable-focal.list
    rm -rfv /etc/apt/sources.list.d/peek-developers-ubuntu-stable-focal.list.save
}

