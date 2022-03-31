#!/bin/bash
Install_Sunlogin() {
    pushd ${start_dir}/src > /dev/null

    echo "Download sunlogin ..."
    src_url="https://down.oray.com/sunlogin/linux/sunloginclient-${sunlogin_ver}-amd64.deb" && Download_src
    dpkg -i sunloginclient-${sunlogin_ver}-amd64.deb
    apt-get install -f
    rm -rfv sunloginclient-${sunlogin_ver}-amd64.deb
    
    popd > /dev/null
}

Uninstall_Sunlogin() {
    dpkg -P sunloginclient
}