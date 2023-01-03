#!/bin/bash

echo "需要先下载约500MB的Recovery镜像，是否开始? (y/n)"
read isShortcut

if [[ $isShortcut = "y" ]]; then

    if [[ -d "../com.apple.recovery.boot" ]]; then
        rm -rf ../com.apple.recovery.boot
    fi
    mkdir ../com.apple.recovery.boot
    touch ../com.apple.recovery.boot/.contentDetails
    echo "macOS Boot From Recovery" > ../com.apple.recovery.boot/.contentDetails
    echo "开始下载..."
    python python/macrecovery.py -b Mac-F221BEC8 -o ../com.apple.recovery.boot download
    echo "下载完成。"

else

    echo "退出程序。"

fi