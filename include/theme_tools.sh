#!/bin/bash
Install_ThemeTools() {
    apt-get install gnome-tweak-tool
    apt-get install chrome-gnome-shell
    apt-get install gnome-shell-extensions
}

Uninstall_ThemeTools() {
    apt-get autoremove gnome-tweak-tool
    apt-get autoremove chrome-gnome-shell
    apt-get autoremove gnome-shell-extensions
}