FROM debian:bullseye

RUN sudo apt -y update && sudo apt install -y ngnix && sudo apt install openssl -y

COPY ./cinf/default /etc/ngnix/sites

COPY ./tools/entrypoint.sh /

CMD ["/entrypoint.sh"]