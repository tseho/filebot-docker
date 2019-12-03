#FROM ubuntu:18.04
#FROM alpine:3.10
FROM openjdk:14

MAINTAINER Quentin Favrie <quentin.favrie@gmail.com>

ARG FILEBOT_ARCHIVE=FileBot_4.7.9-portable.tar.xz

#RUN apt-get update \
# && apt-get install -y \
#        default-jre-headless \
#        libjna-java \
#        mediainfo \
#        libchromaprint-tools \
#        unrar \
#		p7zip-full \
#		p7zip-rar \
#		mkvtoolnix \
#		mp4v2-utils \
#		gnupg \
#		curl \
#		file \
#		inotify-tools \
#		zip \
# && rm -rvf /var/lib/apt/lists/*

ADD ./${FILEBOT_ARCHIVE} /opt/filebot

#RUN mkdir -p /opt/filebot/lib \
# && cp -v /tmp/filebot/FileBot.jar /opt/filebot/ \
# && rm -r /tmp/filebot

WORKDIR /opt/filebot

ENTRYPOINT ["java", "-jar", "/opt/filebot/FileBot.jar"]
