#!/bin/bash
#https://gnomepomodoro.org/
Install_GnomePomodoro() {
    apt-get install gnome-shell-pomodoro
}

Uninstall_GnomePomodoro() {
    apt-get autoremove gnome-shell-pomodoro
}