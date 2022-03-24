#!/bin/bash
InstallDingtalk(){
    #官方版 https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_1.3.0.20214_amd64.deb
    pushd ${start_dir}/src > /dev/null

    echo "Download dingtalk ..."
    src_url="https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb" && Download_src
    sudo dpkg -i com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb
    sudo apt-get install -f
    sudo rm -rfv com.alibabainc.dingtalk_${dingtalk_ver}_amd64.deb

    popd > /dev/null
}

InstallDingtalkNashaofu(){
    #github community https://github.com/nashaofu/dingtalk
    pushd ${start_dir}/src > /dev/null
    
    echo "Download dingtalk community ..."
    src_url="http://mirror.yangliuan.cn/dingtalk-2.1.13-latest-x86_64.AppImage" && Download_src
    sudo mkdir /opt/dingtalk
    sudo mv -fv dingtalk-2.1.13-latest-x86_64.AppImage /opt/dingtalk/dingtalk.AppImage
    sudo cp -rfv ${start_dir}/icon/dingtalk.png /opt/dingtalk
    sudo cp -rfv ${start_dir}/desktop/dingtalk.desktop /usr/share/applications/
    sudo chown -R ${run_user}.${run_group} /opt/dingtalk
    sudo chmod -R 755 /opt/dingtalk/*
    
    popd > /dev/null
}
