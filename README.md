# Nano NGiNX 

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/Zenithar/nano-nginx?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This image contains :

* [NGiNX](http://nginx.org) : 1.9.14
* [OpenSSL](https://www.openssl.org) : 1.0.2g
* [PCRE](http://www.pcre.org) : 8.38
* [PSOL](https://github.com/pagespeed/ngx_pagespeed) : 1.11.33.0
* additionnal(s) module(s) :
  * [HeadersMore](http://wiki.nginx.org/HttpHeadersMoreModule) : 0.25
+ Anonymization patch : https://gist.github.com/Zenithar/70bbb4343d4d9eee4d86

The RootFS image builder could be found at [zenithar/nginx-builder](https://github.com/Zenithar/dockerfiles/tree/master/nginx-builder).

The server try to find the setting file `nginx.conf` in `/etc/nginx` folder, you can use default installation settings from your distro, the only thing you have to do is to mount the settings folder in the docker container.

```
$ docker run --rm --name nginx -v /srv/http:/www -v /var/log/nginx:/var/log/nginx -v /etc/nginx:/etc/nginx -p 80:80 -p 8443:443 zenithar/nano-nginx:latest
```

Volumes :

 * `/www` : defaut document root for files to serve
 * `/var/log/nginx`: for nginx logs
 * `/etc/nginx`: for nginx settings
