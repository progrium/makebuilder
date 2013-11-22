FROM ubuntu:quantal
MAINTAINER Jeff Lindsay <progrium@gmail.com>

RUN apt-get update; apt-get install -y build-essential curl wget ruby1.9.1 rubygems
RUN cd /usr/bin && curl -sL j.mp/godeb | tar -xzC . && ./godeb install 1.1.2
ADD ./makebuild /usr/bin/makebuild

CMD makebuild