#!/bin/bash
Install_Conky() {
    echo "install conky"
    apt install conky
    cp -rfv ${start_dir}/app-config/conky /etc/
}

Uninstall_Conky() {
    apt autoremove conky
}