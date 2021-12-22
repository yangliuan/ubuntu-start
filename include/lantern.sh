#!/bin/bash
InstallLantern(){
    pushd ${start_dir}/src > /dev/null
    echo "Download lantern ..."
    src_url="https://github.com/getlantern/lantern-binaries/raw/master/lantern-installer-64-bit.deb" && Download_src
    sudo dpkg -i lantern-installer-64-bit.deb
    sudo apt install -f
    sudo rm -rfv lantern-installer-64-bit.deb
    popd > /dev/null
}