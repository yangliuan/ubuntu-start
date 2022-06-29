#!/bin/bash
Install_Qv2ray() {
    pushd ${start_dir}/src > /dev/null

    echo "Download qv2ray ..."
    #文档地址https://qv2ray.net/lang/zh/getting-started/
    src_url="http://mirror.yangliuan.cn/qv2ray.zip" && Download_src
    src_url="http://mirror.yangliuan.cn/QvPlugin-Trojan.v3.0.0.linux-x64.so" && Download_src
    unzip qv2ray.zip

    if [ ! -e "/home/${run_user}/.config/qv2ray" ]; then
      mkdir /home/${run_user}/.config/qv2ray
      chown -R ${run_user}.${run_group} /home/${run_user}/.config/qv2ray/
      chmod -R 755 /home/${run_user}/.config/qv2ray/
    fi

    if [ ! -e "/home/${run_user}/.config/qv2ray/plugins" ]; then
      mkdir /home/${run_user}/.config/qv2ray/plugins
      chown -R ${run_user}.${run_group} /home/${run_user}/.config/qv2ray/plugins
      chmod -R 755 /home/${run_user}/.config/qv2ray/plugins
    fi

    mv -fv qv2ray/vcore/ /home/${run_user}/.config/qv2ray/
    mv -fv QvPlugin-Trojan.v3.0.0.linux-x64.so /home/${run_user}/.config/qv2ray/plugins/
    mv -fv qv2ray/ /opt/
    chown -R ${run_user}.${run_group} /home/${run_user}/.config/qv2ray/vcore
    chown -R ${run_user}.${run_group} /opt/qv2ray
    chmod u+x /opt/qv2ray
    cp -rfv ${start_dir}/desktop/qv2ray.desktop /usr/share/applications/
    chmod -R 755 /usr/share/applications/qv2ray.desktop
    rm -rf qv2ray.zip
    
    popd > /dev/null
}

Uninstall_Qv2ray() {
    rm -rfv /home/${run_user}/.config/qv2ray
    rm -rfv /opt/qv2ray
    rm -rfv /usr/share/applications/qv2ray.desktop
}