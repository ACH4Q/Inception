#!/bin/bash

SSL_CERT="/etc/nginx/ssl/inception.crt"
SSL_KEY="/etc/nginx/ssl/inception.key"

if [! -f "${SSL_CERT}"]; then
    mkdir -p /etc/ngnix/ssl
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout SSL_KEY -