#
# Ubuntu Dockerfile
#
# https://github.com/dockerize/sbt
#

# pull base image
FROM dockerize/ubuntu:latest

MAINTAINER Dockerize "http://dockerize.github.io"

# install Oracle Java JDK 7
RUN apt-get install -y python-software-properties 
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java7-installer
RUN update-java-alternatives -s java-7-oracle
RUN apt-get install -y oracle-java7-set-default

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/

# install Sbt
RUN wget http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.deb
RUN dpkg -i sbt.deb
