#!/bin/bash
InstallV2rayL(){
    pushd ${start_dir}/src > /dev/null
    bash <(curl -s -L http://dl.thinker.ink/install.sh)
    popd > /dev/null
}