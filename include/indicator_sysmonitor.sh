#!/bin/bash
InstallIndicatorSysmonitor(){
    sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
    sudo apt-get update
    sudo apt-get install indicator-sysmonitor
    sudo apt-get install -f
}