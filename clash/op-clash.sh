opkg remove  dnsmasq
opkg update
opkg install dnsmasq-full --force-depends
opkg install wget coreutils coreutils-nohup bash curl ca-certificates ipset ip-full iptables-mod-tproxy kmod-tun luci-compat luci-i18n-base-zh-cn
opkg install http://66o99.github.io/clash/luci-app-openclash_0.45.59-beta_all.ipk
#opkg install http://github.com/vernesong/OpenClash/releases/download/v0.45.59-beta/luci-app-openclash_0.45.59-beta_all.ipk
