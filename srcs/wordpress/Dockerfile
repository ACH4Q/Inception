FROM debian:bullseye

RUN apt-get update && apt-get install -y php-fpm php-mysql mariadb-client curl

RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN mkdir -p /var/www/html

RUN mkdir -p /run/php

COPY tools/setup.sh /setup.sh

RUN chmod +x /setup.sh

ENTRYPOINT ["/setup.sh"]
CMD ["php-fpm7.4", "-F"]