#!/bin/bash
Install_IndicatorSysmonitor() {
    apt install python3-psutil gir1.2-appindicator3-0.1
    git clone https://github.com/fossfreedom/indicator-sysmonitor.git
    pushd indicator-sysmonitor > /dev/null
    make install
    popd > /dev/null
    rm -rf indicator-sysmonitor
    nohup indicator-sysmonitor &
}

Uninstall_IndicatorSysmonitor() {
    rm -rf /usr/lib/indicator-sysmonitor /usr/bin/indicator-sysmonitor
}