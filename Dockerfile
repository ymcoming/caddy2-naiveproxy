FROM --platform=${TARGETPLATFORM} alpine:latest
LABEL maintainer="charlieethan <admin@charlieethan.com>"

WORKDIR /root
COPY naive.sh /root/naive.sh
COPY config.json /etc/naiveproxy/config.json
RUN set -ex \
	&& apk add --no-cache tzdata ca-certificates \
	&& mkdir -p /var/www/html /var/log/naiveproxy \
	&& chmod +x /root/naive.sh \
	&& /root/naive.sh "${TARGETPLATFORM}" \
	&& rm -fv /root/naive.sh

VOLUME /etc/naiveproxy
ENV TZ=Asia/Shanghai
CMD [ "/usr/bin/caddy", "run", "--config", "/etc/naiveproxy/config.json" ]
