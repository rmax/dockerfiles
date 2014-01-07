# Dockerfile to create an image with Redis installed.
#
# Usage:
#
#     docker run -P rolando/redis
#
FROM rolando/base

RUN apt-get install -y gcc make g++ build-essential libc6-dev tcl

RUN wget -qO - http://download.redis.io/redis-stable.tar.gz | tar zxf -
RUN (cd /redis-stable && make all test)

RUN mkdir /redis-data
VOLUME ["/redis-data"]

EXPOSE 6379
ENTRYPOINT ["/redis-stable/src/redis-server", "--dir", "/redis-data"]
