# Nano NGiNX

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/Zenithar/nano-nginx?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This image contains :

* [NGiNX](http://nginx.org) : 1.11.8
* [BoringSSL](https://boringssl.googlesource.com/boringssl/) : master
* [PCRE](http://www.pcre.org) : 8.38
* [PSOL](https://github.com/pagespeed/ngx_pagespeed) : stable
* additionnal(s) module(s) :
  * [HeadersMore](https://github.com/openresty/headers-more-nginx-module)
  * [Brotli](https://github.com/google/ngx_brotli)
  * [Certificate Transparency](https://github.com/grahamedgecombe/nginx-ct)
  * [NAXSI](https://github.com/nbs-system/naxsi)
  * [FancyIndex](https://github.com/aperezdc/ngx-fancyindex)
  * [SRCache](https://github.com/openresty/srcache-nginx-module)

* Patchs:
  * [Boring SSL](https://gist.githubusercontent.com/Zenithar/66dedc0e4dbe54ecb8949822526634a7/raw/030644ac0f1db15fedb9ba9508c73263d3eb7fed/boringssl_nginx.patch)

[Dockerfile](https://gist.github.com/Zenithar/9209968) used to build image.

The server try to find the setting file `nginx.conf` in `/etc/nginx` folder, you can use default installation settings from your distro, the only thing you have to do is to mount the settings folder in the docker container.

```
$ docker run --rm --name nginx -v /srv/http:/www -v /var/log/nginx:/var/log/nginx -v /etc/nginx:/etc/nginx -p 80:80 -p 8443:443 zenithar/nano-nginx:latest
```

Volumes :

 * `/www` : defaut document root for files to serve
 * `/var/log/nginx`: for nginx logs
 * `/etc/nginx`: for nginx settings
