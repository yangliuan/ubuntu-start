#!/bin/bash
Install_xDroid() {
    #安卓模拟器
    #DOC:https://www.linzhuotech.com/Public/Home/img/gitbook/user_manual_nv/_book/xDroid%E6%89%8B%E5%86%8C/2-2.html
    pushd ${start_dir}/src > /dev/null
    
    echo "Download xDroid ..."
    src_url="https://d6.injdk.cn/xdroid/xDroidInstall-x86_64-v${xDroid_ver}.zip" && Download_src
    unzip xDroidInstall-x86_64-v${xDroid_ver}.zip
    sudo -u ${run_user} ./xDroidInstall-x86_64-v${xDroid_ver}.run
    rm -rf xDroidInstall-x86_64-v${xDroid_ver}.zip xDroidInstall-x86_64-v${xDroid_ver}.run

    popd > /dev/null
}

Uninstall_xDroid() {
   sudo -u ${run_user} /opt/xdroid/uninstall
}