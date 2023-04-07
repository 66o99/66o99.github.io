cd /tmp && opkg update
#opkg install wget luci luci-compat unzip luci-i18n-base-zh-cn
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
echo "Yes!"
opkg install coreutils coreutils-base64 iptables-mod-tproxy libuci-lua libudns libmbedtls12
else
echo "No...."
fi
wget https://ghproxy.com/https://github.com/66o99/66o99.github.io/blob/main/ssrp-full/ssrp-full.zip
unzip -o ssrp-full.zip
opkg install *.ipk
rm -rf ssrp-full.zip *-*.ipk
