FROM scratch 
MAINTAINER Thibault NORMAND <me@zenithar.org>                                                                                                                    

ADD rootfs.tar.xz /                                                                

VOLUME ["/var/log/nginx"]
VOLUME ["/www"]
VOLUME ["/etc/nginx"]

EXPOSE 80 443                                                                   

CMD /usr/sbin/nginx
