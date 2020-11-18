FROM debian:buster-slim as base

# recommended for python in docker
ENV PYTHONUNBUFFERED 1

# direct pipenv to make venv in project dir
ENV PIPENV_VENV_IN_PROJECT 1

# keep logs clean
ENV PIPENV_NOSPIN 1

# needed by pipenv to activate shell
ENV LANG en_US.UTF-8
ENV LC_ALL C.UTF-8
ENV SHELL /bin/bash

WORKDIR /app

RUN apt-get update
RUN apt-get install -y postgresql-client python3-pip python3-setuptools
RUN pip3 install pip pipenv setuptools
RUN mkdir -p /srv/static

# provide build args of UID and USER. Matching the host's UID during dev allows
# one to yield files to host fs w/ correct perms from the container
ARG UID=1000
ENV UID=${UID}
ARG USER=user
ENV USER=${USER}

# setup OS environment
RUN echo "BASE IMAGE CREATED WITH ${USER} AS ${UID}" \
    && useradd -lmU -u ${UID} -s /bin/bash ${USER} \
    && chown -R ${USER}:${USER} /app \
    && chown -R ${USER}:${USER} /srv/static

RUN apt-get install -y git gcc libpq-dev python3-dev
RUN pip3 install psycopg2
RUN apt-get autoremove -y
