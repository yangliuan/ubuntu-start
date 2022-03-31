#!/bin/bash
Install_Feishu() {
    pushd ${start_dir}/src > /dev/null

    echo "Download feishu ..."
    src_url="https://sf3-cn.feishucdn.com/obj/suite-public-file-cn/c031998f5be1/bytedance-feishu-${feishu_ver}_amd64.deb" && Download_src
    dpkg -i bytedance-feishu-${feishu_ver}_amd64.deb
    apt-get install -f
    rm -rfv bytedance-feishu-${feishu_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_Feishu() {
    dpkg -P bytedance-feishu-beta
}