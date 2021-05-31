#!/bin/bash
cd /root
wget https://github.com/ymcoming/caddy2-naiveproxy/releases/download/2.4.1/caddy2  && chmod +x caddy2 && mkdir -m 755 /etc/caddy && mv caddy2 /etc/caddy && wget https://github.com.cnpmjs.org/ymcoming/gost/releases/download/1.0/gost.service && mv ./caddy.service /etc/systemd/system/caddy.service && systemctl daemon-reload && systemctl enable caddy
