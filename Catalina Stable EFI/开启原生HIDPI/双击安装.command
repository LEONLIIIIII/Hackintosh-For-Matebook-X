#!/bin/bash


path=${0%/*}
sudo mount -uw /
Killall Finder
sudo cp -a "$path/DisplayVendorID-dae" /System/Library/Displays/Contents/Resources/Overrides
sudo cp -a "$path/Icons.plist" /System/Library/Displays/Contents/Resources/Overrides
echo '成功开启HIDPI！需要重启电脑。'
bash read -p '按任何键退出'