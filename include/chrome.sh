#!/bin/bash
InstallChrome(){
    pushd ${start_dir}/src > /dev/null
    echo "Download chrome ..."
    src_url="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" && Download_src
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f
    sudo rm -rfv google-chrome-stable_current_amd64.deb
    popd > /dev/null
}