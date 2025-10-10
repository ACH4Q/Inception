FROM debian:bullseye

RUN apt-get update -y && apt-get install -y vsftpd openssl

COPY tools/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["vsftpd", "/etc/vsftpd.conf"]