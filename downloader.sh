#!/bin/sh

arch="$(uname -m)"

if [ $arch = amd64 ] || [ $arch = x86_64 ]; then
    echo "Downloading for amd64"
    wget -q -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
elif [ $arch = i386 ] || [ $arch = i686 ]; then
    echo "Downloading for i386"
    wget -q -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386
elif [ $arch = arm64 ] || [ $arch = aarch64 ] || [ $arch = armv8l ]; then
    echo "Downloading for arm64"
    wget -q -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64
elif [ $arch = arm ] || [ $arch = armv6l ] || [ $arch = armv7l ]; then
    echo echo "Downloading for arm"
    wget -q -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm
else
    echo "Unsupported architecture: $arch"
    exit 1
fi

chmod +x cloudflared