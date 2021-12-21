#!/bin/bash
RemoveLiboffice(){
    sudo apt remove libreoffice-calc
    sudo apt remove libreoffice-draw
    sudo apt remove libreoffice-impress
    sudo apt remove libreoffice-writer
    sudo apt remove libreoffice*
    sudo apt purge libreoffice*
    sudo apt autoremove
}