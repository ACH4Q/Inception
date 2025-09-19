FROM debian:bullseye

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y mariadb-server mariadb-client && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/mysql/scripts/

COPY tools/setup.sh /etc/mysql/scripts/setup.sh

RUN chmod +x /etc/mysql/scripts/setup.sh

ENTRYPOINT ["/etc/mysql/scripts/setup.sh"]

CMD ["mysqld", "--bind-address=0.0.0.0"]