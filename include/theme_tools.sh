#!/bin/bash
Install_ThemeTools() {
    if [ "${Ubuntu_ver}" == "22" ]; then
        apt-get install gnome-tweak
    else
        apt-get install gnome-tweak-tool
    fi
    
    apt-get install chrome-gnome-shell
    apt-get install gnome-shell-extensions
}

Uninstall_ThemeTools() {
    if [ "${Ubuntu_ver}" == "22" ]; then
        apt-get autoremove gnome-tweaks
    else
        apt-get autoremove gnome-tweak-tool
    fi
    
    apt-get autoremove chrome-gnome-shell
    apt-get autoremove gnome-shell-extensions
}