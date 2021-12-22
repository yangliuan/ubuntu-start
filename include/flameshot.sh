#!/bin/bash
InstallFlameshot(){
    pushd ${start_dir}/src > /dev/null
    echo "Download flameshot ..."
    src_url="https://github.com/flameshot-org/flameshot/releases/download/v0.10.2/flameshot-0.10.2-1.debian-10.amd64.deb" && Download_src
    sudo dpkg -i flameshot-0.10.2-1.debian-10.amd64.deb
    sudo apt install -f
    sudo rm -rfv flameshot-0.10.2-1.debian-10.amd64.deb
    popd > /dev/null
}