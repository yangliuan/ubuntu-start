#!/bin/bash
InstallWps(){
    pushd ${start_dir}/src > /dev/null
    echo "Download wps ..."
    src_url="https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/${wps_sub_ver}/wps-office_${wps_ver}_amd64.deb" && Download_src
    sudo dpkg -i wps-office_${wps_ver}_amd64.deb
    sudo apt-get install -f
    sudo rm -rfv wps-office_${wps_ver}_amd64.deb
    popd > /dev/null
}
