#!/bin/bash
Install_Wps() {
    pushd ${start_dir}/src > /dev/null
    echo "Download wps ..."
    src_url="https://wps-linux-personal.wpscdn.cn/wps/download/ep/Linux2019/${wps_sub_ver}/wps-office_${wps_ver}_amd64.deb" && Download_src
    echo "${src}"
    dpkg -i wps-office_${wps_ver}_amd64.deb
    apt-get install -f
    rm -rfv wps-office_${wps_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_Wps() {
    dpkg -P wps-office
}