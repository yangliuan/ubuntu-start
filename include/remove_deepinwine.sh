sudo aptpurge-get --autoremove com.qq.weixin.deepin
sudo aptpurge-get --autoremove com.qq.weixin.work.deepin
sudo rm -rf ~/Documents/WeChat\ Files ~/Documents/Tencent\ Files
sudo rm /etc/apt/preferences.d/deepin-wine.i-m.dev.pref /etc/apt/sources.list.d/deepin-wine.i-m.dev.list /etc/profile.d/deepin-wine.i-m.dev.sh
sudo apt-get update