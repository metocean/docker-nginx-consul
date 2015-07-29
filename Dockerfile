FROM metocean/mini-nodejs-consul:0.10
MAINTAINER Thomas Coats <thomas@metocean.co.nz>

RUN apk-install nginx\
  && mkdir /tmp/nginx\
  && rm /etc/init.d/nginx
ADD nginx.sh /etc/service/nginx/run
ADD nginxlogforwarder.sh /etc/service/nginxlogforwarder/run