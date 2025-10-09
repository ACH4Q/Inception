FROM debian:bullseye

RUN apt-get update -y && apt-get install -y vsftpd openssl

COPY 

ENTRYPOINT ["entrypoint.sh"]

CMD ["vsftpd", "/etc/vsftpd.conf"]