#!/bin/sh

if [ ! -f /etc/nginx/ssl/nginx-selfsigned.crt ]; then
    echo "SSL certificate not found, creating..."
    mkdir -p /etc/nginx/ssl
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx-selfsigned.key -subj "/CN=www.isdt.co" -out /etc/nginx/ssl/nginx-selfsigned.crt
else
    echo "SSL certificate found, skipping..."
fi
