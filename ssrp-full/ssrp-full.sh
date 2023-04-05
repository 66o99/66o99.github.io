opkg update
#opkg install wget luci luci-compat unzip luci-i18n-base-zh-cn
wget https://ghproxy.com/https://github.com/66o99/66o99.github.io/blob/main/ssrp-full/ssrp-full.zip
unzip -o ssrp-full.zip
opkg install *.ipk
rm -rf ssrp-full.zip *-*.ipk
