#!/bin/bash


path=${0%/*}
sudo mkdir /Library/Displays/Contents/Resources/Overrides
sudo cp -a "$path/DisplayVendorID-dae" /Library/Displays/Contents/Resources/Overrides
sudo cp -a "$path/Icons.plist" /Library/Displays/Contents/Resources/Overrides
echo '成功开启HIDPI！需要重启电脑。'
bash read -p '按任何键退出'