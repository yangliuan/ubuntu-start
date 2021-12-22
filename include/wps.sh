#!/bin/bash
InstallWps(){
    pushd ${start_dir}/src > /dev/null
    echo "Download wps ..."
    src_url="https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/10702/wps-office_11.1.0.10702_amd64.deb" && Download_src
    sudo dpkg -i wps-office_11.1.0.10702_amd64.deb
    sudo apt install -f
    sudo rm -rfv wps-office_11.1.0.10702_amd64.deb
    popd > /dev/null
}
