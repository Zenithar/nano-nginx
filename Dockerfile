FROM scratch

LABEL maintainer="Thibault NORMAND <me@zenithar.org>" \
      docker.from="scratch" \
      built.on="ubuntu 18.04" \
      hardened.flags="true" \
      description="Nginx built from source" \
      ssl.implementation="boringssl" \
      boringssl.version="master" \
      pcre.version="8.42" \
      zlib.version="1.3.0-cloudflare" \
      jemalloc.version="5.1.0" \
      luajit.version="2.0.5" \
      nginx.version="1.15.4" \
      nginx.modules="HeadersMore|Brotli|Certificate Transparency|NAXSI|FancyIndex|SRCache|LUA" \
      nginx.patches="HPACK|RemoveHeaders|StrictSNI" \
      nist.cpe.list.nginx="cpe:2.3:a:nginx:nginx:1.15.4:*:*:*:*:*:*:*" \
      nist.cpe.list.pcre="cpe:2.3:a:pcre:pcre:8.42:*:*:*:*:*:*:*" \
      nist.cpe.list.zlib="cpe:2.3:a:gnu:zlib:1.2.8:*:*:*:*:*:*:*" 

ADD rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

ENTRYPOINT /usr/sbin/nginx
