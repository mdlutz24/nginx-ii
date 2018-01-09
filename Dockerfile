FROM nginx

RUN apt-get update && apt-get install -y nginx-extras

COPY nginx.conf /etc/nginx/nginx.conf

COPY drupal.conf /etc/nginx/conf.d/drupal.template

COPY nginx-entrypoint.sh /nginx-entrypoint.sh

ENTRYPOINT ["/nginx-entrypoint.sh"]