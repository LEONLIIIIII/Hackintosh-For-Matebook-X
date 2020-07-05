# MatebookX最新版本BIOS（2.11）已修复右扬声器不工作的BUG，故本补丁已经不再需要，只需更新BIOS版本即可。

**进入[MateBook X官方售后支持](https://consumer.huawei.com/cn/support/laptops/matebook-x/)，下载对应版本BIOS，按照说明进行安装。**


## ~~使用Huawei-sound.sh脚本和sleepwatcher设置每次唤醒时自动后台运行修复右边扬声器不工作。~~

## ~~步骤如下：~~
先安装brew，打开终端，运行：
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
brew安装成功后，再运行：
```
brew install sleepwatcher
```
启动sleepwatcher：
```
brew services start sleepwatcher
```
编辑配置文件
```
touch .wakeup 
sudo chmod 777 .wakeup 
vi .wakeup 
```
按i插入：
```
sh /你的路径/huawei-sound.sh &
killall Terminal
```
按esc然后输入
`:wq`

ok了。sleepwatcher只能唤醒时自动运行脚本，还要设置开机自动运行：
```
touch hwsound-fix
sudo chmod 777 hwsound-fix
vi hwsound-fix
```
按i插入：
```
sh /你的路径/huawei-sound.sh &
killall Terminal
```
按esc然后输入
`:wq`
在系统偏好设置的用户与群组登录项里添加hwsound-fix~~
**(注：如果运行huawei-sound.sh提示hda verb：command not found，请确保CodecCommander.kext驱动正确加载，并尝试安装一下alc298_fix文件夹里的自动安装脚本)**
