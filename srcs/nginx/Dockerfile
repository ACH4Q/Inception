FROM debian:bullseye

RUN sudo apt -y update && sudo apt install -y nginx && sudo apt install openssl -y

COPY ./conf/default_conf.conf /etc/ngnix/conf.d/default.conf

COPY tools/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]