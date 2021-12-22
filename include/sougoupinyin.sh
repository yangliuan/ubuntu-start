#!/bin/bash
InstallSougoupinyin(){
    pushd ${start_dir}/src > /dev/null
    echo "Download sougou pinyin..."
    src_url="https://ime.sogouimecdn.com/202112221339/92a0ce0c3f6fa6d287d2184ea5788cb1/dl/index/1639750479/sogoupinyin_3.4.0.9700_amd64.deb" && Download_src
    sudo apt dpkg -i sogoupinyin_3.4.0.9700_amd64.deb
    sudo apt install -f
    sudo rm -rfv sogoupinyin_3.4.0.9700_amd64.deb
    popd > /dev/null
}