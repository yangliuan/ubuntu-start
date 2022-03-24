#!/bin/bash
InstallSougoupinyin(){
    pushd ${start_dir}/src > /dev/null

    echo "Download sougou pinyin..."
    #该版本没有生效暂时不用了
    src_url="https://ime.sogouimecdn.com/202112222103/098a2a3b5cd82398cc4bebfe36439c38/dl/index/1639750479/sogoupinyin_3.4.0.9700_amd64.deb" && Download_src
    sudo apt-get install fcitx-bin
    sudo apt-get install fcitx-table
    sudo apt-get dpkg -i sogoupinyin_3.4.0.9700_amd64.deb
    sudo apt-get install -f
    sudo rm -rfv sogoupinyin_3.4.0.9700_amd64.deb
    
    popd > /dev/null
}