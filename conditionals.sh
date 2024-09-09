#!/bin/bash

echo "checking if you are in a wsl"
if [[ $(fastfetch --host-format {1} | grep -e "Host: WSL") ]]; then
    if [[ ! $(grep -e '# Check if we are currently in the home of the host' ~/.bashrc) ]]; then
        echo ""
        echo '# Check if we are currently in the home of the host' >>~/.bashrc
        echo 'regex="/mnt/c/Users/[^/]*/?$";' >>~/.bashrc
        echo '' >>~/.bashrc
        echo 'if [[ $(pwd) =~ $regex ]];then' >>~/.bashrc
        echo 'cd' >>~/.bashrc
        echo 'fi' >>~/.bashrc
    fi
fi
