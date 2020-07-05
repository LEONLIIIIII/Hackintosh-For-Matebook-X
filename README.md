# Hackintosh-For-MatebookX
新增Big Sur Beta版系统的支持。测试版系统不完善，且黑苹果更是问题较多，安装前请三思而行，并且做好备份。
## 我的电脑配置：
* CPU:I5-7200U
* GPU:INTEL HD 620
* 无线网卡：intel 8265ac
* 内存：Micron 4GB*2
* 固态硬盘：LITEON CB1-SD256
* 声卡：Realtek ALC298
* 显示器：2160x1440 2k

## 更新 （2020.7.5）

* **修复了使用三星PM971固态硬盘（SAMSUNG MZ2LZ256HMJP-00000）的Matebook X无法引导进macOS的问题。**

## 更新 （2020.7.1）

补充更新：修复外接HDMI设备重启的BUG。

* **本次更新增加了Big Sur Beta版系统的支持，目前由于引导不完善，无法全新安装，需要从Catalina系统下升级安装。**

### PS：

*1：从Catalina直升前请用本项目中的Big Sur Beta EFI替换当前EFI，否则会失败。*

*2：升级安装完成后重启至OC，可能会无法找到Big Sur的启动项，需要，方法一：在设置config.plist->misc->BlessOveride添加启动路径：\System\Library\CoreServices\boot.efi；方法二：进入recovery或者时光机器恢复界面，左上角苹果标志选择启动磁盘，选择10.16启动，就会生成Big Sur的启动项。*

* **~~Big Sur Beta版系统更新了unix内核，修复了在Matebook X长久以来右扬声器不工作的bug，因此在本系统下不使用修复补丁即可完美驱动双扬声器！！！~~**（经测试似乎是因为更新了BIOS或者APPLEALC驱动更新修复的。。。）
* **测试版系统不完善，且黑苹果更是问题较多，安装前请三思而行，并且做好备份。**
### 正常运行：
* cpu变频
* 显卡hd620
* 键盘以及背光
* usb type-c
* 多指触控板以及手势操作
* 2K HIDPI屏
* 摄像头
* 睡眠以及唤醒
* 自动亮度调节
* 蓝牙
* 8265无线网卡
* 声卡
### 不正常运行：
* 无解的指纹识别
* 状态栏右上角控制中心、声音、蓝牙、电池状态菜单卡顿
* 升级后Safari无法打开需要下载新版Safari使用且新版经常闪退
* App Store里App未知原因无法下载
* 部分软件闪退以及不正常运行
* 各种小bug和未知bug......

## 更新 （2020.6.21）
* 优化配置文件，删去不需要的补丁和驱动。
* 提升稳定性，优化cpu变频和待机。
## 更新 （2020.6.20）
* **修复了大部分快捷键，目前亮度加减、音量加减、静音键皆正常使用。（ps：至此Matebook X黑苹果的功能性方面基本全部完善，以后多为小修小补，更新频率会放缓。）**
* 修复了某些情况下kernel_task进程占用过高的现象，例如：连接蓝牙耳机播放声音。
## 更新 （2020.6.19）
* **新增i7-7500U版MatebookX机型的支持（ps：一直没发现这俩机型配置文件并不通用。。。此更新后i7版和i5版通用，i7版可直接使用本项目里的EFI文件。）**
* ~~新增亮度快捷键补丁，将f1和f2改为亮度增减，不需要的可在config.plist中删除。~~ 见2020.6.20更新
## 更新 （2020.6.18）
* **修改操作系统更名补丁，解决其对OC引导Windows或者使用原生Boot Camp切换Windows的影响。详细内容见[修复操作系统更名补丁对OC引导Windows的影响](https://github.com/4323770/Hackintosh-For-Matebook-X/tree/master/修复操作系统更名补丁对OC引导Windows的影响.md)。**
* 在以上基础上，原生Boot Camp正常工作，在macOS和Windows下皆可相互切换，且无任何不工作的硬件。（**macOS中启动转换助理里下载Windows支持软件，然后使用启动磁盘切换到Windows，再安装Windows支持软件即可。如若D盘被隐藏，使用cmd的diskpart命令清除分区参数，随后再用磁盘管理分配盘符。**）
* 更新触摸板驱动至最新（之前一直忘了这个2333）
* 加入了z大的itlwm英特尔Wi-Fi驱动，Wi-Fi名称和密码自行在驱动里修改。[zxystd/itlwm](https://github.com/zxystd/itlwm)
## 更新（2020.6.10）
* **oc引导版本更新至0.5.9**
* 驱动更新为最新版本
## 更新（2020.6.9）
* **重新编辑config文件，更换使用OC 0.5.7引导，启动速度更快，配置文件更简洁。**
* 可从10.15其他版本直升最新版本（理论上也可以从Mojave直升）
* 新增蓝牙驱动。**英特尔Wi-Fi也已经可以驱动（配置中没添加，请自行下载使用，告别usb网卡http://bbs.pcbeta.com/viewthread-1848662-1-1.html）**
* 更改hidpi的分辨率配置，显示效果更完美。
## 更新：
* 更新最新驱动支持10.15Beta，无痛升级。
* 更换电源管理驱动，提高充电功率。
* 更新注入声卡id，同时使用ALCPlugFix修复耳麦自动切换，感谢远景论坛网友提供帮助。
* 修复iMessage、FaceTime、Siri，感谢Matebook X Pro群里的小伙伴提供帮助。
* 修复亮度快捷键，其他快捷键使用[karabiner-elements](https://github.com/tekezo/Karabiner-Elements)软件映射。
* 使用sleepwatcher设置每次唤醒时自动后台运行Huawei-sound.sh修复右边扬声器不工作。详细内容见[右扬声器补丁](https://github.com/4323770/Hackintosh-For-Matebook-X/tree/master/右扬声器补丁)

## 工作：
* cpu变频
* 显卡hd620
* 键盘以及背光
* usb type-c
* 多指触控板以及手势操作
* 2K HIDPI屏
* 摄像头
* 睡眠以及唤醒
* 自动亮度调节
* 蓝牙
* 8265无线网卡
* 声卡
## 不工作：
* 指纹
* ~~快捷键（有空再折腾）~~
* ~~WIFI（intel板载无线网卡无解，也无法更换，但是能用usb无线网卡）~~
* ~~iMessage，FaceTime不可使用（无对应机型的白果三码）~~

## 修复右扬声器
~~用终端运行Huawei-sound.sh修复右边扬声器不工作~~ 见更新内容
## 开启原生HIDPI
双击自动安装脚本一键安装。（ps：如自动安装出错请手动将DisplayVendorID-dae文件夹和Icons.plist放到系统⁩\⁨资源库\Displays⁩\⁨Contents\Resources\⁨Overrides文件夹下开启hidpi）
## 感谢：
* [远景论坛-微软极客社区](http://www.pcbeta.com)
* [intelwifi](http://bbs.pcbeta.com/viewthread-1848662-1-1.html)
* [github:gnodipac886/MatebookXPro-hackintosh](https://github.com/gnodipac886/MatebookXPro-hackintosh)
* [Issue:Right channel audio not working ](https://github.com/lidel/linux-on-huawei-matebook-x-2017/issues/8) in [lidel/linux-on-huawei-matebook-x-2017](https://github.com/lidel/linux-on-huawei-matebook-x-2017)
* [github:goodwin/ALCPlugFix](https://github.com/goodwin/ALCPlugFix)
* [github:zxystd/itlwm](https://github.com/zxystd/itlwm)

