#!/bin/bash
#Github:https://github.com/atareao/my-weather-indicator
Install_MyWeatherIndicator() {
    sudo add-apt-repository ppa:atareao/atareao
    sudo apt update
    sudo apt install my-weather-indicator
}

Uninstall_MyWeatherIndicator() {
    sudo add-apt-repository -r ppa:atareao/atareao
    sudo apt update
    sudo apt autoremove
}