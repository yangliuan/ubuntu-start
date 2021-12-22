#!/bin/bash
InstallDingtalk(){
    pushd ${start_dir}/src > /dev/null
    echo "Download dingtalk ..."
    src_url="http://mirror.yangliuan.cn/dingtalk-2.1.13-latest-x86_64.AppImage" && Download_src
    sudo mkdir /opt/dingtalk
    sudo mv -fv dingtalk-2.1.13-latest-x86_64.AppImage /opt/dingtalk/dingtalk.AppImage
    sudo cp -rfv ${start_dir}/icon/dingtalk.png /opt/dingtalk
    sudo cp -rfv ${start_dir}/desktop/dingtalk.desktop /usr/share/applications/
    popd > /dev/null
}