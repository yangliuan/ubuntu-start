#!/bin/bash
Install_LinuxQQ() {
    pushd ${start_dir}/src > /dev/null

    echo "Download linux qq ..."
    src_url="https://down.qq.com/qqweb/LinuxQQ/linuxqq_${linuxqq_ver}_amd64.deb" && Download_src
    dpkg -i linuxqq_${linuxqq_ver}_amd64.deb
    apt-get install -f
    rm -rfv linuxqq_${linuxqq_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_LinuxQQ() {
    dpkg -P linuxqq
}