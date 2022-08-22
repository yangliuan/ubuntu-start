#!/bin/bash
Install_PatchSuport() {
    #无法运行appimage问题
    #REF https://coolandroid.blog.csdn.net/article/details/124403162?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-124403162-blog-124639425.pc_relevant_multi_platform_featuressortv2dupreplace&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-124403162-blog-124639425.pc_relevant_multi_platform_featuressortv2dupreplace&utm_relevant_index=1
    apt install fuse libfuse2 2> /dev/null
    modprobe fuse
    groupadd fuse
    usermod -a -G fuse ${run_user}
    #浏览器上传下载卡住问题
    #REF https://askubuntu.com/questions/1402530/running-any-chromium-based-browser-in-ubuntu-22-04-freezes
    apt install xdg-desktop-portal-gnome
}