#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
#
#添加SSR PLUS+
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a
