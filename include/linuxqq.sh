#!/bin/bash
InstallLinuxQQ(){
    pushd ${start_dir}/src > /dev/null

    echo "Download linux qq ..."
    src_url="https://down.qq.com/qqweb/LinuxQQ/linuxqq_${linuxqq_ver}_amd64.deb" && Download_src
    sudo dpkg -i linuxqq_${linuxqq_ver}_amd64.deb
    sudo apt-get install -f
    sudo rm -rfv linuxqq_${linuxqq_ver}_amd64.deb
    
    popd > /dev/null
}