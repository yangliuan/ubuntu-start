#!/bin/bash
RemoveUnwanted(){
    #接龙游戏
    sudo apt purge aisleriot 
    #数独
    sudo apt purge gnome-sudoku 
    #扫雷
    sudo apt purge gnome-mines 
    #对对碰
    sudo apt purge gnome-mahjongg
    #音乐播放器
    sudo apt purge rhythmbox 
    #扫描
    sudo apt purge simple-scan
    #茄子 系统摄像头软件
    sudo apt purge cheese
}