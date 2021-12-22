#!/bin/bash
InstallIndicatorSysmonitor(){
    sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
    sudo apt update
    sudo apt install indicator-sysmonitor
    sudo apt install -f
}