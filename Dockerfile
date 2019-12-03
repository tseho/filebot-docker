FROM openjdk:14

MAINTAINER Quentin Favrie <quentin.favrie@gmail.com>

ARG FILEBOT_ARCHIVE=FileBot_4.7.9-portable.tar.xz

ADD ./${FILEBOT_ARCHIVE} /opt/filebot

WORKDIR /opt/filebot

ENTRYPOINT ["java", "-jar", "/opt/filebot/FileBot.jar"]
