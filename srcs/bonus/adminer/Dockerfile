FROM debian:bullseye

RUN apt-get update && apt-get install -y ssh

ENTRYPOINT ["/setup.sh"]

CMD ["php-fpm7.4", "-F"]