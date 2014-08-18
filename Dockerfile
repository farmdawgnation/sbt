#
# Sbt Dockerfile
#
# https://github.com/dockerize/sbt
#

# Pull base image
FROM dockerize/java:1.7

MAINTAINER Dockerize "http://dockerize.github.io"

# Install Sbt
RUN wget http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.deb && dpkg -i sbt.deb

# Define a volume somewhere other than root
VOLUME ['/usr/data']

# Drop into work directory
WORKDIR /usr/data

# Default command
CMD ["sbt"]
