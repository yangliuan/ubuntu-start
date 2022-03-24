#!/bin/bash
InstallFlameshot(){
    #https://github.com/flameshot-org/flameshot
    pushd ${start_dir}/src > /dev/null

    echo "Download flameshot ..."
    src_url="http://mirror.yangliuan.cn/flameshot-0.10.2-1.debian-10.amd64.deb" && Download_src
    sudo dpkg -i flameshot-0.10.2-1.debian-10.amd64.deb
    sudo apt-get install -f
    sudo rm -rfv flameshot-0.10.2-1.debian-10.amd64.deb
    
    popd > /dev/null
}