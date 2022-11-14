opkg update
opkg install wget luci luci-compat unzip luci-i18n-base-zh-cn
wget https://66o99.github.io/ssrp/ssrp.zip
unzip -o ssrp.zip
opkg install *.ipk
rm -rf ssrp.zip *-*.ipk
