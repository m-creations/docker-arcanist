## -*- docker-image-name: "mcreations/arcanist" -*-

FROM debian:stable-slim
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y --no-install-recommends \
            arcanist\
            git &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/
