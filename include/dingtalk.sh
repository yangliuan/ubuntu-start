#!/bin/bash
Install_Dingtalk() {
    #官方版 https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_1.3.0.20214_amd64.deb
    pushd ${start_dir}/src > /dev/null

    echo "Download dingtalk ..."
    src_url="https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb" && Download_src
    dpkg -i com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb
    apt-get install -f
    rm -rfv com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb

    popd > /dev/null
}

Uninstall_Dingtalk() {
    dpkg -P com.alibabainc.dingtalk
}
