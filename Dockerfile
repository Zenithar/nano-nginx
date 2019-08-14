FROM scratch

LABEL maintainer="Thibault NORMAND <me@zenithar.org>" \
      docker.from="scratch" \
      built.on="ubuntu 19.04" \
      hardened.flags="true" \
      description="Nginx built from source" \
      ssl.implementation="boringssl" \
      boringssl.version="master" \
      pcre.version="8.43" \
      zlib.version="1.2.11" \
      jemalloc.version="5.2.1" \
      nginx.version="1.17.3" \
      nginx.modules="HeadersMore|Brotli|Certificate Transparency|NAXSI|FancyIndex|SRCache" \
      nginx.patches="" \
      nist.cpe.list.nginx="cpe:2.3:a:nginx:nginx:1.17.3:*:*:*:*:*:*:*" \
      nist.cpe.list.pcre="cpe:2.3:a:pcre:pcre:8.43:*:*:*:*:*:*:*" \
      nist.cpe.list.zlib="cpe:2.3:a:gnu:zlib:1.2.11:*:*:*:*:*:*:*" 

ADD rootfs.tar.xz /

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443

ENTRYPOINT /usr/sbin/nginx
