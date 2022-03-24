#!/bin/bash
InstallNeteasyCloudMusic(){
    pushd ${start_dir}/src > /dev/null

    echo "Download netease-cloud-music ..."
    src_url="https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb" && Download_src
    sudo dpkg -i netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    sudo apt-get install -f
    sudo rm -rfv netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    
    popd > /dev/null
}