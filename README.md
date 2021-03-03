# Hyperqube Dockerfiles

Various Dockerfiles we use/push for internal systems.

## maintenance

Available as [hyperqubeio/maintenance](https://hub.docker.com/r/hyperqubeio/maintenance).

A maintenance web server image.

Usage:

```bash
docker run --rm \
  --name=maintenance \
  -p 80:80 -p 443:443 \
  hyperqubeio/maintenance \
  <hostname>
```

## python

Available as [hyperqubeio/python](https://hub.docker.com/r/hyperqubeio/python).

A basic image of Python, some build tools, and PostgreSQL client.
