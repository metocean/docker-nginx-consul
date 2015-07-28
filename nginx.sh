#!/bin/sh
set -e
if [[ ! -e /var/log/nginx/error.log ]]; then
  # The Nginx log forwarder might be sleeping and waiting
  # until the error log becomes available. We restart it in
  # 1 second so that it picks up the new log file quickly.
  (sleep 1 && sv restart /etc/service/nginxlogforwarder)
fi
exec /usr/sbin/nginx -g "daemon off;"