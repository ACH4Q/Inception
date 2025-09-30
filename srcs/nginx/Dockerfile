FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/nginx.conf /etc/nginx/conf.d/nginx.conf

COPY tools/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]