#!/bin/bash
Install_IndicatorSysmonitor() {
    add-apt-repository ppa:fossfreedom/indicator-sysmonitor
    apt-get update
    apt-get install indicator-sysmonitor
    apt-get install -f
    nohup indicator-sysmonitor &
}

Uninstall_IndicatorSysmonitor() {
    apt-get autoremove indicator-sysmonitor
    rm -rfv /etc/apt/sources.list.d/umang-ubuntu-indicator-stickynotes-focal.list
    rm -rfv /etc/apt/sources.list.d/umang-ubuntu-indicator-stickynotes-focal.list.save
}