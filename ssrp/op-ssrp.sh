opkg remove  dnsmasq
opkg update
opkg install dnsmasq-full --force-depends
opkg install unzip luci-compat wget luci-i18n-base-zh-cn
wget https://66o99.github.io/ssrp/ssrp.zip
unzip -o ssrp.zip
opkg install *.ipk
rm -rf ssrp.zip *-*.ipk
