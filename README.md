GL-Inet Mt-300n-v2 / Mt-1300 - 酸酸乳.SSRP  - 猫咪.OpenClash   插件在线安装（教程）

安装前先恢复出厂设置，确定Wan口插入网线，保证互联网通畅，使用网页版SSH终端插件进行安装，安装步骤如下！
进入软件包更新一下，然后安装luci-i18n-ttyd-zh-cn 后在服务里打开 Ttyd 或Terminal ，用户名：root 密码：空/自设的，
将红色部分的代码复制粘贴在Ttyd 或Terminal 命令行里，回车等待自动安装进度走完即可！    （使用Winscp / Putty软件也是一样的）

#-----  酸酸乳.SSRP 安装篇    -----#

适用于 Openwrt.org 官方的21.02 版本
安装命令
```
wget -qO- https://66o99.github.io/ssrp/op-ssrp.sh | sh       //直接一条命令搞定
```
#/bin/sh op-ssrp.sh  //旧命令用不上了

适用于 GL-inet 的原厂 1907 版本 ( 原厂固件要在软件包里先安装LUCI 后才能进入高级模式 )
安装命令
```
wget -qO- https://66o99.github.io/ssrp/gl-ssrp.sh | sh       //直接一条命令搞定
```
#/bin/sh gl-ssrp.sh //旧命令用不上了

///////////////////////////////////////////////////////////////////////////////
仅适用于 Gl-inet 的 128M-Nand 魔改版,其他没版本测试过！
```
wget -qO- https://66o99.github.io/ssrp-full/ssrp-full.sh | sh   //一条命令搞定
```
#/bin/sh ssrp-full.sh //旧命令用不上了

///////////////////////////////////////////////////////////////////////////////

#-----  猫咪.Openclash 安装篇 -----#

适用于 Openwrt.org 官方的21.02 版本
安装命令
```
wget -qO- https://66o99.github.io/clash/op-clash.sh | sh     //直接一条命令搞定
```
#/bin/sh op-clash.sh //旧命令用不上了

适用于 GL-inet 的原厂 1907 版本 ( 原厂固件要在软件包里先安装LUCI 后才能进入高级模式 )
安装命令  << Mt300n-v2 原厂版本不建议安装 OpenClash 效率太低了，用OP官方安装 >>
```
wget -qO- https://66o99.github.io/clash/gl-clash.sh | sh     //直接一条命令搞定
```
#/bin/sh gl-clash.sh //旧命令用不上了

遇到出错的仔细观察错误提示，OP的插件出错无非就是缺乏依赖或者版本内核不兼容，缺乏依赖的话可以从其他软件源搜索到复制链接过来安装即可！
