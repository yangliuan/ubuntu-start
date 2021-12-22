#!/bin/bash
InstallFeishu(){
    pushd ${start_dir}/src > /dev/null
    echo "Download feishu ..."
    src_url="https://sf3-cn.feishucdn.com/obj/suite-public-file-cn/c031998f5be1/bytedance-feishu-beta_5.2.0-24_amd64.deb" && Download_src
    sudo dpkg -i bytedance-feishu-beta_5.2.0-24_amd64.deb
    sudo apt install -f
    sudo rm -rfv bytedance-feishu-beta_5.2.0-24_amd64.deb
    popd > /dev/null
}