FROM metocean/aroha:latest

RUN apk add --update nginx\
  && mkdir /tmp/nginx\
  && rm /etc/init.d/nginx\
  && chown -R nginx:root /var/lib/nginx\
  && mkdir -p /run/nginx

ADD nginx.sh /etc/service/nginx/run
ADD nginxlogforwarder.sh /etc/service/nginxlogforwarder/run
