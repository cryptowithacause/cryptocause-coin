FROM debian:stretch
LABEL maintainer="cryptocause Developers <dev@cryptocause.org>"
LABEL description="Dockerised cryptocauseCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
