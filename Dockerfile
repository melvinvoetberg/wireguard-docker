FROM alpine:latest

RUN apk update && \
  apk add --no-cache \
  wireguard-tools \
  iptables \
  bash

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
