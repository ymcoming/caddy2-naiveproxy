#!/bin/sh

git clone https://github.com/caddyserver/xcaddy.git && mv xcaddy/* $PWD && rm -rf xcaddy
env GOOS=linux GOARCH=amd64 go build -o xcaddy -ldflags "-s -w" ./cmd/xcaddy && chmod +x xcaddy
