# Chronos
#
# VERSION 2.3.3

FROM debian:wheezy
MAINTAINER Nick Poorman <mail@nickpoorman.com>

ENV DEB_VERSION_MESOS 0.22.0-1.0.debian78

RUN echo "deb http://repos.mesosphere.io/debian wheezy main" | tee /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    apt-get update && \
    apt-get install -y \
      mesos=$DEB_VERSION_MESOS \
      maven \
      openjdk-7-jre-headless \
      mesos \
      scala \
      curl \
      wget

RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
    apt-get install -y nodejs

ADD . /chronos

WORKDIR /chronos

RUN wget https://github.com/mesos/chronos/archive/2.3.3.tar.gz -O - | tar -xz --strip-components=1

RUN mvn clean package

RUN rm -rf /etc/mesos

ENTRYPOINT ["bin/start-chronos.bash"]
