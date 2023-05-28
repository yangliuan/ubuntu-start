#!/bin/bash
Install_xDroid() {
    #安卓模拟器
    #DOC:https://www.linzhuotech.com/Product/download
    pushd ${start_dir}/src > /dev/null
    
    echo "Download xDroid ..."
    src_url="https://d6.injdk.cn/xdroid/xDroidInstall-x86_64-v${xDroid_ver}.tar.gz" && Download_src
    tar -zxvf xDroidInstall-x86_64-v${xDroid_ver}.run.tar.gz
    sudo -u ${run_user} ./xDroidInstall-x86_64-v${xDroid_ver}.run
    rm -rf xDroidInstall-x86_64-v${xDroid_ver}.run.tar.gz xDroidInstall-x86_64-v${xDroid_ver}.run

    popd > /dev/null
}

Uninstall_xDroid() {
   sudo -u ${run_user} /opt/xdroid/uninstall
}