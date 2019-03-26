FROM talkbank/php-7.2-supervisor

RUN apt install -y php7.2-fpm

WORKDIR /var/www/

# ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

ENTRYPOINT ["/usr/sbin/php-fpm7.2", "-F"]

