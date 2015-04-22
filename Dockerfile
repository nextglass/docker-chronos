# Chronos
#
# VERSION 2.3.3

FROM debian:wheezy
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ENV DEB_VERSION_CHRONOS 2.3.3-1.0.1.debian77
ENV DEB_VERSION_MESOS 0.22.0-1.0.debian78

RUN echo "deb http://repos.mesosphere.io/debian wheezy main" > /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    apt-get update && \
    apt-get -f -y install chronos=$DEB_VERSION_CHRONOS mesos=$DEB_VERSION_MESOS

# we don't want to use localhost as zk_host
RUN rm /etc/mesos/zk
# don't set http_port
RUN rm /etc/chronos/conf/http_port

EXPOSE 4400

ENTRYPOINT ["/usr/bin/chronos"]

