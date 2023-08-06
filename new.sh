#!/bin/sh
# Command: wget https://66o99.github.io/new.sh && /bin/sh new.sh
rm -rf new.sh && cd /tmp/tmp && opkg update && clear
cat << EOF
 ---For Mipsel_24Kc-----------------------------------
  1 = ShadowSocksR+  2 = OpenClash   < --  Full   - >
 -----------------------------------------------------
  3 = SSR+_Mini_only-2MB   < -- No - V2ray/Trojan - >
 -----------------------------------------------------
 *****************************************************
 ---For Aarch64_Cortex-A53 & A7-----------------------
  4 = ShadowSocksR+  5 = OpenClash   < --  Full   - >
 -----------------------------------------------------
  6 = ShadowSocksR+  < -------- only_A7 -- Full	    >
 -----------------------------------------------------
EOF
echo "Input: 1/2/3/4/5/6"
read input
	if [ $input = 1 ];then
	echo "ok ! install - ShadowSocksR - waiting..."
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
opkg install coreutils coreutils-base64 iptables-mod-tproxy libuci-lua libudns libmbedtls12
else
echo "(@_@)"
fi
# wget https://ghproxy.com/https://github.com/66o99/66o99.github.io/blob/main/ssrp-full/ssrp-full.zip
curl -O https://archive.openwrt.org/releases/21.02.1/packages/mipsel_24kc/packages/xray-core_1.5.8-1_mipsel_24kc.ipk
wget -O ssrp-full.zip https://66o99.github.io/ssrp-full/ssrp-full-2.zip
unzip -o ssrp-full.zip && opkg install *.ipk && rm -rf ssrp-full.zip *-*.ipk
	elif [ $input = 2 ];then
	echo "ok ! install - OpenClash - waiting....."
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
opkg install luci luci-i18n-base-zh-cn wget coreutils-nohup bash luci-compat
opkg install http://66o99.github.io/clash/libcap_2.43-1_mipsel_24kc.ipk
opkg install http://66o99.github.io/clash/libcap-bin_2.43-1_mipsel_24kc.ipk
else
opkg install luci-compat luci-i18n-base-zh-cn
fi
curl -O https://ghproxy.com/https://github.com/vernesong/OpenClash/releases/download/v0.45.59-beta/luci-app-openclash_0.45.59-beta_all.ipk
opkg install luci-app-openclash_*.ipk && rm -rf luci-app-openclash_*.ipk
curl -O https://66o99.github.io/clash/7621.tar.gz
tar -zxvf 7621.tar.gz -C /etc/openclash/core
chmod 755 /etc/openclash/core/clash
	elif [ $input = 3 ];then
	echo "ok ! install - SSR+_Mini - waiting..... "
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
opkg install wget luci luci-compat unzip luci-i18n-base-zh-cn
else
opkg remove  dnsmasq && opkg install dnsmasq-full --force-depends
opkg install unzip luci-compat wget luci-i18n-base-zh-cn
fi
wget https://66o99.github.io/ssrp/ssrp.zip
unzip -o ssrp.zip && opkg install *.ipk && rm -rf ssrp.zip *-*.ipk
	elif [ $input = 4 ];then
	echo "ok ! install - ShadowSocksR - waiting..."
opkg install unzip luci-compat && opkg remove  dnsmasq && opkg install dnsmasq-full --force-depends
curl -O https://66o99.github.io/ssrp-full/ssrp-full-a53.zip
unzip -o ssrp-full-a53.zip && opkg install *.ipk && rm -rf *
	elif [ $input = 5 ];then
	echo "ok ! install - OpenClash - waiting....."
opkg install unzip luci-compat && opkg remove  dnsmasq && opkg install dnsmasq-full --force-depends
curl -O https://ghproxy.com/https://github.com/vernesong/OpenClash/releases/download/v0.45.59-beta/luci-app-openclash_0.45.59-beta_all.ipk
opkg install luci-app-openclash_*.ipk && rm -rf luci-app-openclash_*.ipk
curl -O https://66o99.github.io/clash/7981.tar.gz
tar -zxvf 7981.tar.gz -C /etc/openclash/core
chmod 755 /etc/openclash/core/clash
	elif [ $input = 6 ];then
	echo "ok ! install - ShadowSocksR - waiting..."
opkg install luci-compat
curl -O https://66o99.github.io/ssrp-full/ssrp-full-a7.zip
unzip -o ssrp-full-a7.zip && opkg install *.ipk && rm -rf *
	else
	echo "Input error !"
	fi
