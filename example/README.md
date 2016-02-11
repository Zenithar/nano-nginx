# nano-nginx example configuration

Derived from `nano-nginx` image, embed the configuration except the ssl related
files.

Exposes HTTP 2.0 service, with (A+) quarklab SSL test [tested on 11/02/2016].

In order to run this image you have to change the `nginx/virtualhosts.d/default.conf`
file, to your needs.

```
$ docker build -t <user>/nano-nginx .
$ docker pull memcached
$ docker run -d --name memcached memcached
$ docker run -d --name nginx -v /srv/docker/nginx/www:/www -v /srv/docker/nginx/ssl:/etc/nginx/ssl --link memcached:example_memcached_1 -p 80:80 -p 443:443 <user>/nano-nginx
```

Or with `docker-compose` :

```
$ docker-compose build
$ docker-compose pull
$ docker-compose up -d
```
