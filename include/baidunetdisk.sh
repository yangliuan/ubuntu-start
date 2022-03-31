#!/bin/bash
Install_Baidunetdisk() {
    pushd ${start_dir}/src > /dev/null

    echo "Download baidunetdisk ..."
    src_url="https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb" && Download_src
    dpkg -i baidunetdisk_4.3.0_amd64.deb
    apt-get install -f
    rm -rfv baidunetdisk_4.3.0_amd64.deb
    
    popd > /dev/null
}

Uninstall_Baidunetdisk() {
    dpkg -P baidunetdisk
}