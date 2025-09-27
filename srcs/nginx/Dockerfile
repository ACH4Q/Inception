FROM debian:bullseye

RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY ./conf/nginx.conf /etc/ngnix/conf.d/nginx.conf

COPY tools/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]