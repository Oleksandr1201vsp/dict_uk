FROM ubuntu:xenial-20210114

RUN apt update
RUN apt install -y openjdk-8-jdk
ADD . /src
WORKDIR /src
RUN ./gradlew expand
