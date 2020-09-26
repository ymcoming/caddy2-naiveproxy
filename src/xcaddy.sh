#!/bin/sh

git clone https://github.com/caddyserver/xcaddy.git && cd xcaddy
env GOOS=linux GOARCH=amd64 go build -o $PWD/caddy -ldflags "-s -w" ./cmd/xcaddy && chmod +x xcaddy && cd ..
mv xcaddy/caddy $PWD && rm -rf xcaddy && mv caddy xcaddy
