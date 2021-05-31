#!/bin/bash
cd /root
wget https://github.com.cnpmjs.org/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz  && gzip -d gost-linux-amd64-2.11.1.gz && rm -rf gost*.gz && chmod +x ./gost* && mkdir /etc/gost && mv gost-linux-amd64-2.11.1 /etc/gost/gost && wget https://github.com.cnpmjs.org/ymcoming/gost/releases/download/1.0/gost.service && mv ./gost.service /etc/systemd/system/gost.service && systemctl daemon-reload && systemctl enable gost && systemctl restart gost && systemctl status gost
