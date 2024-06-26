FROM alfg/php-apache

RUN apk --update add php7-session php7-pgsql php7-curl && rm -f /var/cache/apk/*

COPY ./etc/apache2/ /etc/apache2/
RUN rm /etc/apache2/sites/local.conf

COPY ./etc/php7/php.ini /etc/php7/php.ini


RUN chmod +x /opt/entrypoint.sh

EXPOSE 8080