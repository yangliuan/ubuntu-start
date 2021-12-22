#!/bin/bash
InstallQQmusic(){
    pushd ${start_dir}/src > /dev/null
    echo "Download qqmusic ..."
    src_url="https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.1_amd64.deb" && Download_src
    sudo dpkg -i qqmusic_1.1.1_amd64.deb
    sudo apt install -f
    sudo rm -rfv qqmusic_1.1.1_amd64.deb
    popd > /dev/null
}