#!/bin/bash
Remove_Unwanted(){
    #接龙游戏
    apt-get purge aisleriot 
    #数独
    apt-get purge gnome-sudoku 
    #扫雷
    apt-get purge gnome-mines 
    #对对碰
    apt-get purge gnome-mahjongg
    #音乐播放器
    apt-get purge rhythmbox 
    #扫描
    apt-get purge simple-scan
    #茄子 系统摄像头软件
    apt-get purge cheese
}