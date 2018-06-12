# Nano NGiNX

This image contains :

* [NGiNX](http://nginx.org) : 1.15.0
* [BoringSSL](https://boringssl.googlesource.com/boringssl/) : master
* [PCRE](http://www.pcre.org) : 8.42
* [zlib](http://zlib.net): 1.3.0-cloudflare
* additionnal(s) module(s) :
  * [HeadersMore](https://github.com/openresty/headers-more-nginx-module)
  * [Brotli](https://github.com/google/ngx_brotli)
  * [Certificate Transparency](https://github.com/grahamedgecombe/nginx-ct)
  * [NAXSI](https://github.com/nbs-system/naxsi)
  * [FancyIndex](https://github.com/aperezdc/ngx-fancyindex)
  * [SRCache](https://github.com/openresty/srcache-nginx-module)
  * [LUA](https://github.com/openresty/lua-nginx-module) (LuaJIT 2.0.5) 
* Patchs:
  * [Dynamic TLS](https://raw.githubusercontent.com/cujanovic/nginx-dynamic-tls-records-patch/master/nginx__dynamic_tls_records_1.13.0%2B.patch)
  * [CloudFlare SPDY](https://raw.githubusercontent.com/xddxdd/sslconfig/master/patches/nginx__1.13.0_http2_spdy.patch)

[Dockerfile](https://gist.github.com/Zenithar/9209968) used to build image.

The server try to find the setting file `nginx.conf` in `/etc/nginx` folder, you can use default installation settings from your distro, the only thing you have to do is to mount the settings folder in the docker container.

```
$ docker run --rm --name nginx -v /srv/http:/www -v /var/log/nginx:/var/log/nginx -v /etc/nginx:/etc/nginx -p 80:80 -p 8443:443 zenithar/nano-nginx:latest
```

Volumes :

 * `/www` : defaut document root for files to serve
 * `/var/log/nginx`: for nginx logs
 * `/etc/nginx`: for nginx settings

## Tools

 * Brotli encoder (/bin/bro)
 * Luajit console (/bin/luajit)
