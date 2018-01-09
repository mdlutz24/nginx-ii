#!/bin/bash
if [[ -z $NGINX_SERVER_NAME ]]; then
	echo "NGINX_SERVER_NAME is required"
	env
	exit 1
fi

envsubst '$NGINX_SERVER_NAME' < /etc/nginx/conf.d/drupal.template > /etc/nginx/conf.d/drupal.conf

nginx -g 'daemon off;'