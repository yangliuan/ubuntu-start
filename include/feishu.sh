#!/bin/bash
#https://www.feishu.cn/download
Install_Feishu() {
    pushd ${start_dir}/src > /dev/null
    echo "Download feishu ..."
    src_url=" https://sf3-cn.feishucdn.com/obj/ee-appcenter/${feishu_link_token}/Feishu-linux_x64-${feishu_ver}.deb" && Download_src
    dpkg -i bytedance-feishu-${feishu_ver}_amd64.deb
    apt-get -y install -f
    #rm -rfv bytedance-feishu-${feishu_ver}_amd64.deb
    popd > /dev/null
}

Uninstall_Feishu() {
    dpkg -P bytedance-feishu-beta
}