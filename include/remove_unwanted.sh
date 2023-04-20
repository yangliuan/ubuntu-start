#!/bin/bash
Remove_Unwanted(){
    #接龙游戏
    apt purge aisleriot 
    #数独
    apt purge gnome-sudoku 
    #扫雷
    apt purge gnome-mines 
    #对对碰
    apt purge gnome-mahjongg
    #音乐播放器
    apt purge rhythmbox 
    #扫描
    apt purge simple-scan
    #茄子 系统摄像头软件
    apt purge cheese
}