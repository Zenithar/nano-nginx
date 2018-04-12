FROM scratch

LABEL maintainer="Thibault NORMAND <me@zenithar.org>" \
      docker.from="scratch" \
      built.on="ubuntu 18.04" \
      hardened.flags="true" \
      description="Nginx built from source" \
      ssl.implementation="openssl" \
      openssl.version="1.1.1-pre4" \
      pcre.version="8.42" \
      zlib.version="1.3.0-cloudflare" \
      jemalloc.version="5.0.1" \
      luajit.version="2.0.5" \
      nginx.version="1.13.12" \
      nginx.modules="HeadersMore|Brotli|Certificate Transparency|NAXSI|FancyIndex|SRCache|LUA" \
      nginx.patches="Dynamic TLS|CloudFlare SPDY" \
      nist.cpe.list.nginx="cpe:2.3:a:nginx:nginx:1.13.12:*:*:*:*:*:*:*" \
      nist.cpe.list.openssl="cpe:2.3:a:openssl:openssl:1.1.1:*:*:*:*:*:*:*" \
      nist.cpe.list.pcre="cpe:2.3:a:pcre:pcre:8.00:*:*:*:*:*:*:*" \
      nist.cpe.list.zlib="cpe:2.3:a:gnu:zlib:1.2.8:*:*:*:*:*:*:*" 

ADD rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

ENTRYPOINT /usr/sbin/nginx
