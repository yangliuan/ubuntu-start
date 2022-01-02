#!/bin/bash
InstallxDroid(){
    #安卓模拟器
    #DOC:https://www.linzhuotech.com/Public/Home/img/gitbook/user_manual_nv/_book/xDroid%E6%89%8B%E5%86%8C/2-2.html
    pushd ${start_dir}/src > /dev/null
    
    echo "Download xDroid ..."
    src_url="https://d6.injdk.cn/xdroid/xDroidInstall-x86_64-v${xDroid_ver}.tar.gz" && Download_src
    tar -zxvf xDroidInstall-x86_64-v${xDroid_ver}.tar.gz
    ./xDroidInstall-x86_64-v${xDroid_ver}.run
    rm -rf xDroidInstall-x86_64-v${xDroid_ver}.tar.gz xDroidInstall-x86_64-v${xDroid_ver}.run

    popd > /dev/null
}