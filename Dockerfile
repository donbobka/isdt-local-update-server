FROM nginx:stable-alpine3.17

RUN apk add openssl

COPY ./40-prepare-ssl-certs.sh /docker-entrypoint.d
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./down /usr/share/nginx/html/down

RUN mkdir -p /etc/nginx/ssl