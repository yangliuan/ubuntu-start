#!/bin/bash
RemoveUnwanted(){
    #接龙游戏
    sudo apt-get purge aisleriot 
    #数独
    sudo apt-get purge gnome-sudoku 
    #扫雷
    sudo apt-get purge gnome-mines 
    #对对碰
    sudo apt-get purge gnome-mahjongg
    #音乐播放器
    sudo apt-get purge rhythmbox 
    #扫描
    sudo apt-get purge simple-scan
    #茄子 系统摄像头软件
    sudo apt-get purge cheese
}