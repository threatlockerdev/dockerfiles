#!/bin/sh
set -e

HOST="$1"

if [ "$HOST" == "" ]; then
  echo "Usage: docker run ... hyperqubeio/maintenance <host>"
  exit 1
fi

openssl req \
  -x509 -nodes -newkey rsa:4096 \
  -days 365 \
  -keyout "/certs/main.key" \
  -out "/certs/main.pub" \
  -subj "/C=US/ST=DC/L=DC/O=Hyperqube/OU=Maintenance/CN=$HOST"

nginx -g "daemon off;"
