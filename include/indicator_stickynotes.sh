#!/bin/bash
Install_IndicatorStickynotes() {
    apt-add-repository ppa:umang/indicator-stickynotes
    apt-get update && apt-get install indicator-stickynotes
}

Uninstall_IndicatorStickynotes() {
    apt-get -y autoremove indicator-stickynotes
    rm -rfv /etc/apt/sources.list.d/umang-ubuntu-indicator-stickynotes-focal.list
    rm -rfv /etc/apt/sources.list.d/umang-ubuntu-indicator-stickynotes-focal.list.save
}