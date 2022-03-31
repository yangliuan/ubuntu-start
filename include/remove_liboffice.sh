#!/bin/bash
Remove_Liboffice(){
    apt-get remove libreoffice-calc
    apt-get remove libreoffice-draw
    apt-get remove libreoffice-impress
    apt-get remove libreoffice-writer
    apt-get remove libreoffice*
    apt-get purge libreoffice*
    apt-get autoremove
}