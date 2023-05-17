#!/bin/bash
#https://gnomepomodoro.org/
Install_GnomePomodoro() {
    apt-get -y install gnome-shell-pomodoro
}

Uninstall_GnomePomodoro() {
    apt-get -y autoremove gnome-shell-pomodoro
}