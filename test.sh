#!/bin/sh
# Command：wget https://66o99.github.io/test.sh && /bin/sh test.sh
rm -rf test.sh && cd /tmp && opkg update && clear
cat << EOF
 -----------------------------------------------------
  1 = ShadowSocksR+  2 = OpenClash   < --  Full   - >
 -----------------------------------------------------
  3 = SSR+_Mini_only-2MB   < -- No - V2ray/Trojan - >
 -----------------------------------------------------
EOF
echo "Input: 1/2/3"
read input
	if [ $input = 1 ];then
	echo "ok ! install - ShadowSocksR - waiting..."
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
opkg install coreutils coreutils-base64 iptables-mod-tproxy libuci-lua libudns libmbedtls12
else
echo "(@_@)"
fi
#wget https://ghproxy.com/https://github.com/66o99/66o99.github.io/blob/main/ssrp-full/ssrp-full.zip
curl -O https://op.supes.top/packages/mipsel_24kc/old/xray-core_1.6.0-50_mipsel_24kc.ipk
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
wget https://ghproxy.com/https://github.com/vernesong/OpenClash/releases/download/v0.45.59-beta/luci-app-openclash_0.45.59-beta_all.ipk
opkg install luci-app-openclash_*.ipk && rm -rf luci-app-openclash_*.ipk
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
	else
	echo "Input error !"
	fi
