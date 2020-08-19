#!/usr/bin/env sh
mv -f /resources/vhost.conf /etc/nginx/conf.d/default.conf

sed -i -e "s/SERVER_NAME/$VIRTUAL_HOST/" /etc/nginx/conf.d/default.conf
sed -i -e "s/CLIENT_MAX_BODY_SIZE/$CLIENT_MAX_BODY_SIZE/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/WEBAPP_FOLDER/$WEBAPP_FOLDER/g" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'