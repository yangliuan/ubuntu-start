#!/bin/bash
Install_AppImageSuport() {
    sudo apt install fuse libfuse2
    sudo modprobe fuse
    sudo groupadd fuse
    user="$(whoami)"
    sudo usermod -a -G fuse $user
}
