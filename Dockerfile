FROM ubuntu:12.04

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && apt-get install -y wget && apt-get install -y apache2 &&\
  echo "vulnerable"

ENV HOME /root
