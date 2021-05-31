#!/bin/bash
cd /root
wget https://github.com/ymcoming/caddy2-naiveproxy/releases/download/2.4.2/caddy2  && chmod +x caddy2 && mkdir -m 755 /etc/caddy && mv caddy2 /etc/caddy && wget https://cdn.jsdelivr.net/gh/ymcoming/caddy2-naiveproxy@2.4.2/caddy.service && mv ./caddy.service /etc/systemd/system/caddy.service && systemctl daemon-reload && systemctl enable caddy && mkdir -p /var/www/html && cd /var/www/html && wget https://github.com/ymcoming/caddy2-naiveproxy/releases/download/v1.0/27.zip && unzip 27.zip 
