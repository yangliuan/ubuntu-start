#!/bin/bash
Install_Conky() {
    echo "install conky"
    apt-get -y install conky
    cp -rfv ${start_dir}/app-config/conky /etc/
}

Uninstall_Conky() {
    apt-get -y autoremove conky
}