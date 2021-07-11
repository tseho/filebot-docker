FROM openjdk:8

MAINTAINER Quentin Favrie <quentin.favrie@gmail.com>

ARG FILEBOT_ARCHIVE=FileBot_4.7.9-portable.tar.xz

ADD ./${FILEBOT_ARCHIVE} /opt/filebot

RUN apt-get update && apt-get install -y libmediainfo-dev

WORKDIR /opt/filebot

ENTRYPOINT ["/opt/filebot/filebot.sh"]
