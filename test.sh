#!/bin/sh
# Command: wget https://66o99.github.io/new.sh && /bin/sh new.sh
rm -rf new.sh && cd /tmp/tmp && opkg update && clear
cat << EOF
 ---For Mipsel_24Kc-----------------------------------
  1 = OpenClash < Openclash-v45.59+Mete_Core-v45.87 >
 -----------------------------------------------------
EOF
echo "Input: 1/install OpenClash"
read input
	if [ $input = 1 ];then
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
curl -O https://66o99.github.io/clash/7621-meta.tar.gz
tar -zxvf 7621.tar.gz -C /etc/openclash/core
chmod 755 /etc/openclash/core/clash
	else
	echo "Input error !"
	fi
