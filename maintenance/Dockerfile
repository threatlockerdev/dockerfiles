FROM nginx:alpine

RUN apk update
RUN apk add openssl

COPY default.conf /etc/nginx/conf.d/
COPY index.html /var/www/
COPY start.sh ./
RUN mkdir /certs

ENTRYPOINT [ "sh", "./start.sh" ]
