#!/bin/bash
Install_QQmusic() {
    pushd ${start_dir}/src > /dev/null

    echo "Download qqmusic ..."
    src_url="https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_${qqmusic_ver}_amd64.deb" && Download_src
    dpkg -i qqmusic_${qqmusic_ver}_amd64.deb
    apt-get install -f
    rm -rfv qqmusic_${qqmusic_ver}_amd64.deb
    
    popd > /dev/null
}

Uninstall_QQmusic() {
    dpkg -P qqmusic
}