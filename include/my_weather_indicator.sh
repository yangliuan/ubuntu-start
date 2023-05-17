#!/bin/bash
#Github:https://github.com/atareao/my-weather-indicator
Install_MyWeatherIndicator() {
    add-apt-repository ppa:atareao/atareao
    apt-get update
    apt-get -y install my-weather-indicator
}

Uninstall_MyWeatherIndicator() {
    add-apt-repository -r ppa:atareao/atareao
    apt-get update
    apt-get autoremove
}