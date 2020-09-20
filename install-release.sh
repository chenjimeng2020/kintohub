#!/bin/bash

VER="v4.27.5"

DOWNLOAD_LINK="https://github.com/v2ray/v2ray-core/releases/download/${VER}/v2ray-linux-64.zip"

CONFIG_LINK="https://raw.githubusercontent.com/chenjimeng2020/v2ray/master/config.json"

mkdir -p /tmp/v2ray
# Install V2Ray binary to /usr/bin/v2ray
mkdir -p /usr/bin/v2ray

mkdir -p /etc/v2ray

curl -L -o "/tmp/v2ray/v2ray.zip" ${DOWNLOAD_LINK}
unzip "/tmp/v2ray/v2ray.zip" -d "/usr/bin/v2ray/"

curl -L -o "/etc/v2ray/config.json" ${CONFIG_LINK}

# Create folder for V2Ray log
mkdir -p /var/log/v2ray

chmod +x "/usr/bin/v2ray/v2ray"



/usr/bin/v2ray/v2ray -config /etc/v2ray/config.json