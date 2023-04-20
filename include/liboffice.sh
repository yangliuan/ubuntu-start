#!/bin/bash
Install_Libreoffice() {
    apt install libreoffice
}

Uninstall_Libreoffice(){
    #卸载自带的liboffice相关软件,不使用autoremove防止破坏其它软件依赖
    apt remove libreoffice 
    apt purge libreoffice
}