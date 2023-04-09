#!/bin/bash
Install_PatchSuport() {
    apt autoremove
    Install_Appimage
    Install_XdgDesktopPortalGnome
    Install_Ntfs3g
    #Reinstal_GnomeCenter
    ResetTimeForWindow
}


Install_Appimage() {
    #无法运行appimage问题
    #REF https://coolandroid.blog.csdn.net/article/details/124403162?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-124403162-blog-124639425.pc_relevant_multi_platform_featuressortv2dupreplace&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-124403162-blog-124639425.pc_relevant_multi_platform_featuressortv2dupreplace&utm_relevant_index=1
    apt install fuse libfuse2 2> /dev/null
    modprobe fuse
    groupadd fuse
    usermod -a -G fuse ${run_user}
}


Install_XdgDesktopPortalGnome() {
    #浏览器上传下载卡住问题
    #REF https://askubuntu.com/questions/1402530/running-any-chromium-based-browser-in-ubuntu-22-04-freezes
    apt install xdg-desktop-portal-gnome
}

Install_Ntfs3g() {
    #ntfs支持
    #https://github.com/tuxera/ntfs-3g/wiki
    apt install ntfs-3g
}

Reinstal_GnomeCenter (){
    #防止gnome依赖出现问题导致设置中心无法使用
    apt install gnome-control-center --reinstall
}

ResetTimeForWindow() {
    #双系统保持时间一致
    #REF https://www.cnblogs.com/xiaotong-sun/p/16138941.html
   apt install ntpdate
   ntpdate time.windows.com
   hwclock --localtime --systohc
}

