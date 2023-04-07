cat << EOF
 -----------------------------------------------------
  1 = install_ShadowSocksR+     2 = install_OpenClash 
 -----------------------------------------------------
EOF
echo "1/2"
read input

  if [ $input = 1 ];then
  echo "ok ! install - ShadowSocksR - waiting..."

cd /tmp && opkg update
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
echo "......"
opkg install coreutils coreutils-base64 iptables-mod-tproxy libuci-lua libudns libmbedtls12

else
echo "......"
fi

wget https://ghproxy.com/https://github.com/66o99/66o99.github.io/blob/main/ssrp-full/ssrp-full.zip
unzip -o ssrp-full.zip
opkg install *.ipk
rm -rf ssrp-full.zip *-*.ipk

  elif [ $input = 2 ];then
  echo "ok ! install - OpenClash - waiting....."

cd /tmp && opkg update
if [ $(sed -n '7p' /etc/banner | cut -c 10,11,13,14) = 1907 ];then
echo "......"
opkg install luci luci-i18n-base-zh-cn wget coreutils-nohup bash luci-compat
opkg install http://66o99.github.io/clash/libcap_2.43-1_mipsel_24kc.ipk
opkg install http://66o99.github.io/clash/libcap-bin_2.43-1_mipsel_24kc.ipk

else
echo "......"
opkg remove  dnsmasq
opkg install dnsmasq-full --force-depends
opkg install wget coreutils coreutils-nohup bash curl ca-certificates ipset ip-full iptables-mod-tproxy kmod-tun luci-compat luci-i18n-base-zh-cn
fi

wget https://ghproxy.com/https://github.com/vernesong/OpenClash/releases/download/v0.45.59-beta/luci-app-openclash_0.45.59-beta_all.ipk
opkg install luci-app-openclash_*.ipk
rm -rf luci-app-openclash_*.ipk

  else
  echo "ok ! install - End ."
  fi
