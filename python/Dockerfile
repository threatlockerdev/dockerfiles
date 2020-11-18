ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-alpine

# recommended for python in docker
ENV PYTHONUNBUFFERED 1

# direct pipenv to make venv in project dir
ENV PIPENV_VENV_IN_PROJECT 1

# keep logs clean
ENV PIPENV_NOSPIN 1

# needed by pipenv to activate shell
ENV LANG en_US.UTF-8
ENV LC_ALL C.UTF-8
ENV SHELL /bin/sh

WORKDIR /app

RUN mkdir -p /srv/static

RUN apk update
RUN apk add postgresql-client postgresql-dev py3-pip gcc musl-dev python3-dev
RUN pip3 install pipenv psycopg2
