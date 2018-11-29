FROM ubuntu

RUN apt-get update && \
 apt-get install -y mysql-client && \
 apt-get install -y openjdk-10-jdk
