FROM scratch
MAINTAINER Thibault NORMAND <me@zenithar.org>

COPY rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

LABEL description="Nginx built from source" \
      openssl="BoringSSL" \
      nginx="nginx 1.11.10" \
      maintainer="Thibault NORMAND <me@zenithar.org>"

CMD /usr/sbin/nginx
