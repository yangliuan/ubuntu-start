#!/bin/bash
Install_NeteasyCloudMusic() {
    pushd ${start_dir}/src > /dev/null

    echo "Download netease-cloud-music ..."
    src_url="https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb" && Download_src
    dpkg -i netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    apt-get install -f
    rm -rfv netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    
    popd > /dev/null
}

Uninstall_NeteasyCloudMusic() {
    dpkg -P netease-cloud-music
}