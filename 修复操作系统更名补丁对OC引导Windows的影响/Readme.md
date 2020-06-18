# 解决_OSI to XOSI操作系统补丁对OC引导Windows或BootCamp切换Windows时的影响
   
&emsp;&emsp;_OSI to XOSI（SSDT-XOSI）等操作系统更名补丁，主要用于伪装成特定的操作系统，以使某些只能在该系统下工作的硬件工作，常见的如，只能在Win8以上系统工作的I2C触摸板。所以基本上使用I2C触摸板的笔记本都得使用这类操作系统补丁才能使触摸板正常工作。
   
&emsp;&emsp;随着OC引导的完善，很多同学都尝试使用Boot Camp或者OC直接引导Windows来实现双系统的便携切换，但是由于OC引导的特性，在引导Windows时也同样会加载Config里的ACPI、NVRAM等补丁，这就会导致部分硬件不工作，甚至会有损坏风险，所以一般不用OC来引导Windows。
   
&emsp;&emsp;**所以常见的情况就是在使用了操作系统补丁后，OC引导Windows时出现绿屏或者蓝屏错误代码ACPI_BIOS_ERROR或者能够进入系统但是I2C触摸板不工作的现象。**
    
&emsp;&emsp;其实解决办法十分简单，只需要在操作系统补丁里加一个操作系统判断语句，使其在引导macOS时返回所需要伪装的操作系统信息，在引导其他操作系统时返回正确的未改名的信息。如下图所示：我的Windows系统版本是win10，I2C触摸板在Win8以上就能驱动，所以我返回_OSI Windows 2015即可。详细内容见文件SSDT-XOSI-FIX.aml

&emsp;&emsp;返回信息与Windows版本的对应关系为：
```
"Windows 2009" = win7, Win Server 2008 R2                 
"Windows 2012" = Win8, Win Server 2012                   
"Windows 2013" = win8.1                   
"Windows 2015" = Win10                   
"Windows 2016" = Win10 version 1607                   
"Windows 2017" = Win10 version 1703                   
"Windows 2017.2" = Win10 version 1709                    
"Windows 2018" = Win10 version 1803                   
"Windows 2018.2" = Win10 version 1809                    
"Windows 2018" = Win10 version 1903
```
&emsp;&emsp;这样一来，就可以解决操作系统改名补丁对OC引导Windows的影响，对于我自己来说解决了OC引导Windows时I2C触摸板无法使用的问题，同时也可以使用原生Boot Camp在macOS和Windows之间无缝切换。
    
&emsp;&emsp;但是仍然不建议直接使用OC引导Windows，原因前面已经说过。
    
&emsp;&emsp;不过有和我一样需求的同学可以尝试使用一下这个方法，来实现原生Boot Camp切换Windows和OC引导Windows时使触摸板正确工作。
