#!/bin/bash
RemoveLiboffice(){
    sudo apt-get remove libreoffice-calc
    sudo apt-get remove libreoffice-draw
    sudo apt-get remove libreoffice-impress
    sudo apt-get remove libreoffice-writer
    sudo apt-get remove libreoffice*
    sudo apt-get purge libreoffice*
    sudo apt-get autoremove
}