FROM metocean/mini-nodejs-consul:latest

RUN apk-install nginx\
  && mkdir /tmp/nginx\
  && rm /etc/init.d/nginx\
  && chown -R nginx:root /var/lib/nginx
ADD nginx.sh /etc/service/nginx/run
ADD nginxlogforwarder.sh /etc/service/nginxlogforwarder/run
