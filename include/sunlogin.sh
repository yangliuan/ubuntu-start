#!/bin/bash
InstallSunlogin(){
    pushd ${start_dir}/src > /dev/null
    echo "Download sunlogin ..."
    src_url="https://down.oray.com/sunlogin/linux/sunloginclient-11.0.0.36662-amd64.deb" && Download_src
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt install -f
    sudo rm -rfv google-chrome-stable_current_amd64.deb
    popd > /dev/null
}