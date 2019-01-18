FROM openjdk:8

MAINTAINER Christopher Blackwell <christopher.blackwell@furman.edu>

RUN \
  curl -L -o sbt-1.2.8.deb http://dl.bintray.com/sbt/debian/sbt-1.2.8.deb && \
  dpkg -i sbt-1.2.8.deb && \
  rm sbt-1.2.8.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion

ENV SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M"

WORKDIR /hmt

CMD sbt console

