# DOCKER-VERSION 1.0.1
# DESCRIPTION    Elliptics

FROM sameersbn/ubuntu:14.04.20140628

MAINTAINER Konstantin Burykin <burkostya@gmail.com>

RUN apt-get install -y curl

ADD assets/setup /app/setup
RUN chmod 755 /app/setup/install
RUN /app/setup/install

ADD assets/config/ioserv.json /app/setup/ioserv.json

ADD assets/init /app/init
RUN chmod 755 /app/init

EXPOSE 1025

VOLUME ["/opt/elliptics"]

ENTRYPOINT ["/app/init"]
CMD ["app:start"]
