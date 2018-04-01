FROM scratch

ADD rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

LABEL description="Nginx built from source" \
      ssl.implementation="openssl" \
      openssl.version="1.1.0h" \
      pcre.version="8.42" \
      zlib.version="1.3.0-cloudflare" \
      jemalloc.version="5.0.1" \
      luajit.version="2.0.5" \
      nginx.version="1.13.10" \
      nginx.modules="HeadersMore|Brotli|Certificate Transparency|NAXSI|FancyIndex|SRCache|LUA" \
      nginx.patches="Dynamic TLS|CloudFlare SPDY" \
      maintainer="Thibault NORMAND <me@zenithar.org>"

ENTRYPOINT /usr/sbin/nginx
