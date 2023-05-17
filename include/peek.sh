#!/bin/bash
Install_Peek() {
    add-apt-repository ppa:peek-developers/stable
    apt-get update
    apt-get -y install peek
}

Uninstall_Peek() {
    add-apt-repository -r ppa:peek-developers/stable
    apt-get update
    apt-get autoremove
}

