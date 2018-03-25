FROM scratch
MAINTAINER Thibault NORMAND <me@zenithar.org>

ADD rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

LABEL description="Nginx built from source" \
      openssl="OpenSSL 1.1.0g" \
      nginx="nginx 1.13.10" \
      maintainer="Thibault NORMAND <me@zenithar.org>"

ENTRYPOINT /usr/sbin/nginx
