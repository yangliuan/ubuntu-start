#!/bin/bash
InstallDingtalk(){
    pushd ${start_dir}/src > /dev/null
    echo "Download dingtalk ..."
    src_url="http://mirror.yangliuan.cn/dingtalk-2.1.13-latest-x86_64.AppImage"
    popd > /dev/null
}