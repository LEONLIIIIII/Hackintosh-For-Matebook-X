# Hackintosh-For-MatebookX
之前以为没人关注这个机型就好久没更新，后来发现也是很多朋友需要这个机型的oc引导，故更新一下。
## 我的电脑配置：
* CPU:I5-7200U
* GPU:INTEL HD 620
* 无线网卡：intel 8265ac
* 内存：Micron 4GB*2
* 固态硬盘：LITEON CB1-SD256
* 声卡：Realtek ALC298
* 显示器：2160x1440 2k
## 更新（2020.6.10）
* **oc引导版本更新至0.5.9**
* 驱动更新为最新版本
## 更新（2020.6.9）
* **重新编辑config文件，更换使用OC 0.5.7引导，启动速度更快，配置文件更简洁。**
* 可从10.15其他版本直升最新版本（理论上也可以从Mojave直升）
* 新增蓝牙驱动。**英特尔Wi-Fi也已经可以驱动（配置中没添加，请自行下载使用，告别usb网卡）**
* 更改hidpi的分辨率配置，显示效果更完美。
## 更新：
* 更新最新驱动支持10.15Beta，无痛升级。
* 更换电源管理驱动，提高充电功率。
* 更新注入声卡id，同时使用ALCPlugFix修复耳麦自动切换，感谢远景论坛网友提供帮助。
* 修复iMessage、FaceTime、Siri，感谢Matebook X Pro群里的小伙伴提供帮助。
* 修复亮度快捷键，其他快捷键使用[karabiner-elements](https://github.com/tekezo/Karabiner-Elements)软件映射。
* 使用sleepwatcher设置每次唤醒时自动后台运行Huawei-sound.sh修复右边扬声器不工作,步骤如下：

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
在系统偏好设置的用户与群组登录项里添加hwsound-fix
(注：如果运行huawei-sound.sh提示hda verb：command not found，先安装一下alc298_fix文件夹里的自动安装脚本)

## 工作：
* cpu变频
* 显卡hd620
* 键盘以及背光
* usb type-c
* 多指触控板以及手势操作
* 2K HIDPI屏
* 摄像头
* 睡眠以及唤醒
* 自动亮度调节亮度调节
* 蓝牙
* 8265无线网卡
* 声卡
## 不工作：
* 指纹
* 快捷键（有空再折腾）
* ~~WIFI（intel板载无线网卡无解，也无法更换，但是能用usb无线网卡）~~
* ~~iMessage，FaceTime不可使用（无对应机型的白果三码）~~

## 修复右扬声器
~~用终端运行Huawei-sound.sh修复右边扬声器不工作~~ 见更新内容
## 开启原生HIDPI
将DisplayVendorID-dae文件夹和Icons.plist放到系统⁩\⁨资源库\Displays⁩\⁨Contents\Resources\⁨Overrides文件夹下开启hidpi
## 感谢：
* [远景论坛-微软极客社区](http://www.pcbeta.com)
* [github: gnodipac886/MatebookXPro-hackintosh](https://github.com/gnodipac886/MatebookXPro-hackintosh)
* [Issue:Right channel audio not working ](https://github.com/lidel/linux-on-huawei-matebook-x-2017/issues/8) in [lidel/linux-on-huawei-matebook-x-2017](https://github.com/lidel/linux-on-huawei-matebook-x-2017)
* [github:goodwin/ALCPlugFix](https://github.com/goodwin/ALCPlugFix)

