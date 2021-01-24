# caddy2-naiveproxy

update:

rm caddy2
wget https://github.com/ymcoming/caddy2-naiveproxy/releases/download/caddy_test/caddy2
cp -f caddy2 -d /etc/caddy
chmod +x /etc/caddy/caddy2         
supervisorctl restart caddy
