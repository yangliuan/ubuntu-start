#!/bin/bash
InstallQv2ray(){
    pushd ${start_dir}/src > /dev/null

    echo "Download qv2ray ..."
    #文档地址https://qv2ray.net/lang/zh/getting-started/
    src_url="http://mirror.yangliuan.cn/qv2ray.zip" && Download_src
    unzip qv2ray.zip

    if [ ! -e "/home/${run_user}/.config/qv2ray" ]; then
      mkdir /home/${run_user}/.config/qv2ray
      sudo chown -R ${run_user}.${run_group} /home/${run_user}/.config/qv2ray/
      chmod -R 755 /home/${run_user}/.config/qv2ray/
    fi

    sudo mv -fv qv2ray/vcore/ /home/${run_user}/.config/qv2ray/
    sudo mv -fv qv2ray/ /opt/
    sudo chown -R ${run_user}.${run_group} /home/${run_user}/.config/qv2ray/vcore
    sudo chown -R ${run_user}.${run_group} /opt/qv2ray
    sudo chmod u+x /opt/qv2ray
    sudo cp -rfv ${start_dir}/desktop/qv2ray.desktop /usr/share/applications/
    sudo chmod -R 755 /usr/share/applications/qv2ray.desktop
    sudo rm -rf qv2ray.zip
    
    popd > /dev/null
}