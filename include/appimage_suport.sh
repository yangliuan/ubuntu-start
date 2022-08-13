#!/bin/bash
Install_AppImageSuport() {
    apt install fuse libfuse2
    modprobe fuse
    groupadd fuse
    usermod -a -G fuse ${run_user}
}
